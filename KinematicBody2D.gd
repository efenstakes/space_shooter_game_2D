extends KinematicBody2D


export (Vector2) var velocity : = Vector2.ZERO
export (Vector2) var max_velocity : = Vector2(600, 0)
export (int) var speed : = 800



func _ready():
	print("Player Ready")

func _physics_proces(delta):
	velocity.x = speed * delta
	velocity = move_and_slide(velocity)
	
func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		 velocity.x -= speed * delta	
	elif Input.is_action_pressed("ui_right"):
		 velocity.x += speed * delta
	else:
		velocity.x = 0
	
		
	velocity.x = clamp(velocity.x, -max_velocity.x, max_velocity.x)
		
	velocity = move_and_slide(velocity, Vector2.UP)
