extends Area2D
class_name Object_Interact;

@export var player : Player
#@onready var object = $Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#body_entered.connect(intersect)
	area_entered.connect(enable_interact)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func enable_interact(node: Node) -> void:
	print("interact")
	pass

# show object's name in japanese etc
func show_object() -> void:
	pass
