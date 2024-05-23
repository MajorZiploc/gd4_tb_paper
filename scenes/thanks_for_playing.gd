extends Node2D
class_name ThanksForPlaying

@onready var ui = $ui_root/ui;
@onready var combat_units_box = $ui_root/ui/combat_units_box;

var pause_menu: Node;
var stats_page: Node;
var sprite_scalar = 0.5;

var combat_units: Array[Node];

func _ready():
  stats_page = SceneHelper.make_stats_page();
  var scene_tween_time = Constants.std_tween_time;
  SceneHelper.fade_in([self, ui], scene_tween_time);
  pause_menu = SceneHelper.make_pause_menu();
  AppState.insert_data(Constants.metrics, {
    "game_completion": {
      "count": AppState.data.get(Constants.metrics, {}).get("game_completion", {}).get("count", 0) + 1,
    }
  });
  ui.add_child(stats_page);
  ui.add_child(pause_menu);
  var position = Vector2(210, 470);
  for key in CombatUnitData.entries.keys():
    var entry = CombatUnitData.entries[key];
    # TODO: figure out how to use the battle_char instead of a sprite
    # var combat_unit = load("res://scenes/battle_char.tscn").instantiate();
    # var combat_unit = load("res://scripts/battle_char.gd").new();
    # var combat_unit = BattleChar.new();
    var combat_unit = Sprite2D.new();
    combat_unit.texture = load(entry.sprite_path);
    combat_unit.scale = Vector2(sprite_scalar, sprite_scalar);
    combat_unit.position = position;
    combat_unit.hframes = 2;
    combat_unit.vframes = 2;
    CombatUnitData.init_idle_tweens(combat_unit, sprite_scalar);
    # combat_unit.z_index = -1;
    combat_units.append(combat_unit);
    combat_units_box.add_child(combat_unit);
    position = position + Vector2(355, 0);
  await get_tree().create_timer(scene_tween_time).timeout;

func _input(event: InputEvent):
  var visible_ = SceneHelper.toggle_pause_menu(event, pause_menu);
  if visible_: return;

func _on_back_to_title_screen_btn_button_up():
  SceneSwitcher.change_scene("res://scenes/title_scene.tscn", {})

func _on_options_btn_button_up():
  SceneHelper.toggle_node(pause_menu);

func _on_stats_btn_button_up():
  SceneHelper.toggle_node(stats_page);
