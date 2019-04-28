extends Timer

export var Proccess_Time = 2
var leftover = 0
signal Current_Time

func _process(delta):
	emit_signal("Current_Time", leftover)
	leftover = get_time_left()
	pass

func _on_Gold_CoinMake_pressed():
	start(Proccess_Time)
	pass # Replace with function body.
