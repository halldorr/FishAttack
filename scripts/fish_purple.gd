extends Area2D

@export var speed = 150
signal died

func _ready():
	pass

func _physics_process(delta):
	global_position.x += -speed * delta

func _on_screen_exited():
	queue_free()

func die():
	emit_signal('died')
	queue_free()

func _on_body_entered(body):
	body.takeDamage()
	die()
