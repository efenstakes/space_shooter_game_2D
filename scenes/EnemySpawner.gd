extends Node2D



onready var Enemy = preload("res://scenes/Enemy.tscn")



func _ready():
	randomize()


func _on_Timer_timeout():
	var new_enemy = Enemy.instance()
	new_enemy.position = Vector2(
		rand_range(global_position.x - 360, global_position.x -60), 
		0
	)
	add_child(new_enemy)
