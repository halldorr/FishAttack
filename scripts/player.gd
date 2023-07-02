extends CharacterBody2D

var speed = 300

func _physics_process(_delta):
	velocity = Vector2(0, 0)
		
	if Input.is_action_pressed("Right"):
		$Sprite2D.flip_h = true
		velocity.x = speed
		
	if Input.is_action_pressed("Left"):
		$Sprite2D.flip_h = false
		velocity.x = -speed
	
	if Input.is_action_pressed("Up"):
		velocity.y = -speed
	
	if Input.is_action_pressed("Down"):
		velocity.y = speed
	
	move_and_slide()
	
	var screenSize = get_viewport_rect().size
	global_position = global_position.clamp(Vector2(0, 0), screenSize)
