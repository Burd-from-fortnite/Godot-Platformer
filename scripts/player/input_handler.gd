extends Node

@onready var jump_buffer_timer = $JumpBufferTimer

var x
var jump_is_pressed = false

var jump_pressed = false:
	get:
		return jump_is_pressed
	set(value):
		jump_is_pressed = value
		if value: jump_buffer = true

var jump_buffer:
	get:
		return not jump_buffer_timer.is_stopped()
	set(value):
		if value: jump_buffer_timer.start()
		else: jump_buffer_timer.stop()

func update():
	x= Input.get_axis("btn_left","btn_right")
	jump_is_pressed = Input.is_action_just_pressed("btn_jump")
	jump_pressed = Input.is_action_pressed("btn_jump")
