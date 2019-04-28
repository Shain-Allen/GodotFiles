extends ProgressBar

export var Proccess_Time = 2
export var metal_cost = 3
export var Price = 4

func _ready():
	max_value = Proccess_Time

func _on_SilverCoinMake_pressed():
	Global.Metal_amount[Global.Metals.Silver] -= metal_cost
	pass # Replace with function body.


func _on_SilverCoinSell_pressed():
	if Global.Coin_amount[Global.Metals.Silver] >= 1:
		Global.Total_money += Price
		Global.Coin_amount[Global.Metals.Silver] -= 1
	pass # Replace with function body.


func _on_SilverCoinTimer_timeout():
	Global.Coin_amount[Global.Metals.Silver] += 1
	pass # Replace with function body.


func _on_SilverCoinTimer_Current_Time(leftover):
	value = leftover
	pass # Replace with function body.
