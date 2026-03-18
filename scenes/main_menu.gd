extends Node2D


func _on_play_pressed() -> void:
	SceneLoader.load_scene("res://scenes/yhdistys.tscn")


func _on_settings_pressed() -> void:
	SceneLoader.load_scene("res://scenes/settings.tscn") #pitää vaihtaa


func _on_quit_pressed() -> void:
	get_tree().quit()
