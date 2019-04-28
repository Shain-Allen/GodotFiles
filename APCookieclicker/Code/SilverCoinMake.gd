extends Button



func _process(delta):
	if Global.Metal_amount[Global.Metals.Silver] >= 3:
		disabled = false
	else:
		disabled = true
	pass

func _on_SilverCoinMake_pressed():
	disabled = true
	pass # Replace with function body.


func _on_SilverCoinTimer_timeout():
	if Global.Metal_amount[Global.Metals.Silver] >= 3:
		disabled = false
	pass # Replace with function body.
