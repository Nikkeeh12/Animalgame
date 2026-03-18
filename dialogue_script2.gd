extends Control

@onready var player = get_tree().get_first_node_in_group("player")
# func _unhandled_input(event):
#	if event.is_action_pressed("interact"):
#			SceneLoader.load_scene("res://interact_stuff/dialogue_1.tscn")


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("close"):
		
		player.can_move = true
		var main_scene := get_tree().current_scene
		main_scene.	get_node("alue3/Node2D/CanvasLayer/Virtual Joystick").visible = true
		print("toimiiko")
		
		
		accept_event()
		queue_free()
