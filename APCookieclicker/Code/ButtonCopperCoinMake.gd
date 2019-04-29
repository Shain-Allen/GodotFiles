extends Button



func _process(delta):
	if Global.Metal_amount[Global.Metals.Copper] >= 2:
		disabled = false
	else:
		disabled = true
	pass

func _on_ButtonCopperCoinMake_pressed():
	disabled = true
	pass # Replace with function body.


func _on_TimerCopperCoin_timeout():
	if Global.Metal_amount[Global.Metals.Copper] >= 2:
		disabled = false
	pass # Replace with function body.
