extends CharacterBody2D

var point_counter = 0

@export var speed = 175
@onready var point_label = $Label



func _ready():
	add_to_group("player")


##WASD

func _physics_process(delta):
		
	get_input()
	move_and_slide()
	
func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed



func _on_danger_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		self.global_position = Vector2(0, 0)
		
		
func _on_point_body_entered(body: Node2D) -> void:
	set_point(point_counter + 1)
	point_label.text = "Point count: " + str(point_counter)
	
	
func set_point(new_point_count: int) -> void:
	point_counter = new_point_count
