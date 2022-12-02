extends Button

export var Scene_to_go_to = "res://Scenes/Main.tscn"

func _ready():
	self.connect("pressed", self, "_on_Button_pressed")
	pass

func _on_Button_pressed():
	get_tree().change_scene(Scene_to_go_to)
	#get_tree().change_scene_to(load(Scene_to_go_to))
