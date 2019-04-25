#Copper Coin
extends ProgressBar

export var Proccess_Time = 2
export var metal_cost = 1
export var Price = 1
var can_process = true

func _ready():
	max_value = Proccess_Time
	
func _process(delta):
	pass

func _on_TimerCopperCoin_timeout():
	pass # Replace with function body.

func _on_ButtonCopperCoinMake_pressed():
	
	pass # Replace with function body.

func _on_TimerCopperCoin_Current_Time(leftover):
	self.value = leftover
	pass # Replace with function body.
