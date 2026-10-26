extends ParallaxLayer

@export var cloud_speed: float = 10

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	motion_offset.x -=cloud_speed * delta
