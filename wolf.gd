extends CharacterBody2D


@export var speed: float = 300.0
@export var jump_force: float = 400.0
@export var gravity: float = 900.0


@onready var anim: AnimatedSprite2D = $AnimatedSprite2D


var last_direction_x: int = 1 

func _physics_process(delta: float) -> void:
	var input_x: float = Input.get_axis("move_left", "move_right")

	var current_direction_x: float = 0.0 
	if abs(input_x) >= 0.25: 
		current_direction_x = input_x

	velocity.x = current_direction_x * speed

	if not is_on_floor():
		velocity.y += gravity * delta
	else:
		if Input.is_action_just_pressed("jump"):
			velocity.y = -jump_force

	_update_animation(current_direction_x)
	move_and_slide()


func _update_animation(direction_from_physics: float) -> void:
	
	if Input.is_action_just_pressed("Attack"): 
		anim.play("Attack") 
		return 

	
	if direction_from_physics > 0:
		last_direction_x = 1
	elif direction_from_physics < 0:
		last_direction_x = -1

	if not is_on_floor():
		anim.play("Jump") 
	else:
		if direction_from_physics == 0:
			if last_direction_x == 1:
				anim.play("idle right")
			else:
				anim.play("idle left") 
		else:
			if direction_from_physics > 0:
				anim.play("run right") 
			elif direction_from_physics < 0:
				anim.play("run left")
