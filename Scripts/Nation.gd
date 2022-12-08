extends Node2D

# Incomplete stats memory storage implementation

var stats: Stats = preload("res://Nation.tres")

func _on_init_load():
  if (File.new()).file_exists("user://Nation.tres"):
    stats = load("user://Nation.tres")

func save():
  ResourceSaver.save("user://Nation.tres", stats)

func _init():
  _on_ini_load()
