extends Button



func on_Time_is_done(Turn_on):
	if Turn_on == true:
		if Global.Metal_amount[Global.Metals.Copper] >= 3:
			disabled = false
		else:
			disabled = true
	print(Turn_on)
	pass
	
func _process(delta):
	pass