class_name Actor
extends KinematicBody2D

export var speed : int = 200
export var gravity : = 20
var vel : = Vector2()

func _physics_process(delta):
	if is_on_floor():
		vel.y = 0
	else:
		vel.y += gravity
