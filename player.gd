extends CharacterBody2D

@export var jumpheight : float =400.0

func _physics_process(delta: float) -> void:
	velocity.y += get_gravity().y *delta
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y=-jumpheight
	
	move_and_slide()
