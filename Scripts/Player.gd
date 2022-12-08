extends Node2D

# Incomplete stats memory storage implementation

var stats: Stats = preload("res://Player.tres")

func _on_init_load():
  if (File.new()).file_exists("user://Player.tres"):
    stats = load("user://Player.tres")

func save():
  ResourceSaver.save("user://Player.tres", stats)

func _init():
  _on_ini_load()
