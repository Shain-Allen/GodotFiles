extends Timer

export var Proccess_Time = 2
var leftover
signal Current_Time

func _ready():
	emit_signal("Current_Time", leftover)
	pass

func _process(delta):
	leftover = get_time_left()

func _on_ButtonCopperCoinMake_pressed():
	start(Proccess_Time)
	pass # Replace with function body.
