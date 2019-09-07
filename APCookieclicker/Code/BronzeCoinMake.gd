extends Button



func _process(delta):
	if Global.Metal_amount[Global.Metals.Bronze] >= 2:
		disabled = false
	else:
		disabled = true
	pass

func _on_BronzeCoinMake_pressed():
	disabled = true
	pass # Replace with function body.


func _on_BronzeCoinTimer_timeout():
	if Global.Metal_amount[Global.Metals.Bronze] >= 2:
		disabled = false
	pass # Replace with function body.
