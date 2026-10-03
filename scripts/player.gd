extends CharacterBody2D
class_name Player;

@onready var player_sprite : AnimatedSprite2D = $AnimatedSprite2D
var player_name : String
var movement_speed : float = 200.0
var direction : String

func move(dir : Vector2) -> void:
	if velocity != Vector2.ZERO:
		if velocity.x < 0:
			player_sprite.play("walk_down")
			direction = "left"
		elif velocity.x > 0:
			player_sprite.play("walk_down")
			direction = "right"
		elif velocity.y < 0:
			player_sprite.play("walk_down")
			direction = "up"
		elif velocity.y > 0:
			player_sprite.play("walk_down")
			direction = "down"
	else: # if velocity is zero
		match direction:
			"left":
				player_sprite.play("idle")
			"right":
				player_sprite.play("idle")
			"up":
				player_sprite.play("idle")
			"down":
				player_sprite.play("idle")
			_:
				player_sprite.play("idle")
		
	velocity = dir * movement_speed
	move_and_slide()
