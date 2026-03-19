extends Sprite2D

var point_counter = 0

var hp = 10
@onready var progress_bar: ProgressBar = $ProgressBar
@onready var point_label = $"../Label"


func _ready(): 
	progress_bar.value = hp


func _on_button_pressed() -> void:
	hp += 1
	progress_bar.value = hp


func _on_button_2_pressed() -> void:
	if hp <= 1:
		get_tree().change_scene_to_file("res://main_meny.tscn")
	hp -= 1
	progress_bar.value = hp
	
	
		



func _on_point_pressed() -> void:
	set_point(point_counter + 1)
	point_label.text = "Point count: " + str(point_counter)
	
	
func set_point(new_point_count: int) -> void:
	point_counter = new_point_count
	
