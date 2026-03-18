extends Control

func _unhandled_input(event):
	if event.is_action_pressed("interact"):
			SceneLoader.load_scene("res://interact_stuff/santa.tscn")


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("close"):
		accept_event()
		queue_free()
