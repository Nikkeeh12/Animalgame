extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		SceneLoader.load_scene("res://scenes/yhdistys_2.tscn") # poistaa edellisen scenen nii pitää vaihtaa
