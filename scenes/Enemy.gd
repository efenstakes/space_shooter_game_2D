extends Area2D




var speed : int = 400


func _physics_process(delta):
	position.y += speed * delta
