# Sticker Book: Time Attack

## TODO:

### level_map

- create node system - 4-6 nodes per level_map - rand enemy per node

### battle_scene

- NEXT: add a min time to the qte event of 3.5 seconds - right now it just goes down 0.5 seconds each round. consider how this affects the difficulty settings

- Make the QTE event more granular; if a user completes 50% of event and doesnt give an invalid input; then 50% of damage is redirected for the parry
- make inventory items stackable

- BUG: refactor health bar to be in 1 krita file - then rebalance the 4 quadrants - right now, it is off and gives the wrong impression in terms of damage - (maybe use flipping instead of using left to right instead will fix this)
- Add a number hit splat (percentage based) on damage taking - will remove the need to explain class differences and what items do
- make mod items that are applied visually display a tween on the combat_unit

- Consider: using Osu style touch events where you have to swipe around in paths

- Needed if number of buffs or debuffs goes above 4: limit number of mods on a combat_unit to 4
- Consider: instead of modulate and disable prop adjustments - consider add_child and remove_child pattern on ui components - or do visible toggling

### general

- NEXT: add a confirm modal for quitting the game

- improve option discoverability. on the thanks_for_playing scene, can add suggestions to the player to up the difficulty or change the quick time event type

- OSHelper.is_mobile() check doesnt seem to work on mobile browsers on itch.io. currently have a work around where user can select if on mobile in title_scene or options

- Add color wheel selector for all colors on character

- diff ui flavors for controller vs keyboard and mouse vs mobile
- add sound effects
- update settings page with sliders for music and sound effects

- update settings page with control configuration for controller and keyboard
- update settings page with touch to button slider to determine likelyhood of 1 event versus the other

- move option component into the tscn files (under $ui_root/overlay) rather than instantiate call but keep the instantiate fn call as an example
- create save slots (3 slots)
- on launch of game: track if a run was occurring, then pick up where the player left off

- add controller support (and tab support) on ui

- flesh out my theme for ui
- figure out how to run the tweens in parallel rather than using the separate tweens and taking the max timeout to this wait for all of them to finish
