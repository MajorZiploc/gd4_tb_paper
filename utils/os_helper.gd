extends Node

# TODO: test these is_* flags

func is_mobile():
  # var os_name = OS.get_name();
  return OS.has_feature("mobile");

func is_web():
  # var os_name = OS.get_name();
  return OS.has_feature("web");

# default feature_tags list: (from: https://docs.godotengine.org/en/stable/tutorials/export/feature_tags.html)
# android
# bsd
# linux
# macos
# ios
# windows
# linuxbsd
# debug
# release
# editor
# template
# double
# single
# 64
# 32
# x86_64
# x86_32
# x86
# arm64
# arm32
# arm
# rv64
# riscv
# ppc64
# ppc32
# ppc
# wasm64
# wasm32
# wasm
# mobile
# pc
# web
# web_android
# web_ios
# web_linuxbsd
# web_macos
# web_windows
# etc
# etc2
# s3tc