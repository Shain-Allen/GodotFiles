extends Button



func _on_ProgressBarCopperCoin_Time_done():
	disabled = false
	pass # Replace with function body.


func _on_ButtonCopperCoinMake_pressed():
	disabled = true
	pass # Replace with function body.

func _process(delta):
	if Global.Metal_amount[Global.Metals.Copper] >= 3:
		disabled = true