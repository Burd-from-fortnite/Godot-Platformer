extends Node
class_name State

var object
var fsm

func enter():
	pass
	
func update(_delta):
	pass
		
func physics_update(_delta):
	pass
	
func change_state(next_state):
	fsm.change_state(next_state)
