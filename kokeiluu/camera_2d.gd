extends Camera2D

func _ready() -> void:
	pass # Replace with function body.

# called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position = position.lerp($"../player".position, delta * 3)
