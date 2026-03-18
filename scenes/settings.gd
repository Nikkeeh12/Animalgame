extends Node2D


func _on_back_pressed() -> void:
	SceneLoader.load_scene("res://scenes/main_menu.tscn")
	
	
	

func _on_volume_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(0,value)
