extends ProgressBar

export var Proccess_Time = 2
export var metal_cost = 3
export var Price = 4

func _ready():
	max_value = Proccess_Time

func _on_Gold_CoinMake_pressed():
	Global.Metal_amount[Global.Metals.Gold] -= metal_cost
	pass # Replace with function body.


func _on_Gold_CoinSell_pressed():
	if Global.Coin_amount[Global.Metals.Gold] >= 1:
		Global.Total_money += Price
		Global.Coin_amount[Global.Metals.Gold] -= 1
	pass # Replace with function body.


func _on_Gold_CoinTimer_timeout():
	Global.Coin_amount[Global.Metals.Gold] += 1
	pass # Replace with function body.


func _on_Gold_CoinTimer_Current_Time(leftover):
	value = leftover
	pass # Replace with function body.
