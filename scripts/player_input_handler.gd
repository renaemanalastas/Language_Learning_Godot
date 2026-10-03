extends Node2D
class_name PlayerInputHandler;

@export var player : Player

# keep track of direction the sprite is facing to determine idle direction
#var direction = "down" 

func _process(delta : float) -> void:
	var dir = Input.get_vector("left", "right", "up", "down")
	player.move(dir)
