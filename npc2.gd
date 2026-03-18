extends StaticBody2D


@onready var interactable: Area2D = $Interactable
@onready var player = get_tree().get_first_node_in_group("player")

func _ready() -> void:
	interactable.interact = _on_interact
	
func _on_interact():
	if player.can_move == true:
		player.can_move = false

		var main_scene := get_tree().current_scene
		main_scene.	get_node("alue3/Node2D/CanvasLayer/Virtual Joystick").visible = false
	
		DialogueLoader.load_scene("res://interact_stuff/dialogue_2.tscn")	
	
		interactable.is_interactable = false
	
