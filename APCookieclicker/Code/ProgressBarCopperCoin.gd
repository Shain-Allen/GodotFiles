#Copper Coin
extends ProgressBar

export var Proccess_Time = 2
export var metal_cost = 3
export var Price = 4

func _ready():
	max_value = Proccess_Time
	
func _process(delta):
	pass

func _on_TimerCopperCoin_timeout():
	Global.Coin_amount[Global.Metals.Copper] += 1
	pass # Replace with function body.

func _on_ButtonCopperCoinMake_pressed():
	Global.Metal_amount[Global.Metals.Copper] -= metal_cost
	pass # Replace with function body.

func _on_ButtonCopperCoinSell_pressed():
	if Global.Coin_amount[Global.Metals.Copper] >= 1:
		Global.Total_money += Price
		Global.Coin_amount[Global.Metals.Copper] -= 1
		
	pass # Replace with function body.

func _on_TimerCopperCoin_Current_Time(leftover):
	value = leftover
	#print(leftover)
	pass # Replace with function body.