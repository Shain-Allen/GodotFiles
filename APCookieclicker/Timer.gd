#Copper timer
extends Timer

export var Process_Time = 1
var RemainingTime

func _on_CopperButton_pressed():
	start(Process_Time)
	pass # Replace with function body.
	
func _process():
	RemainingTime = get_time_left()
