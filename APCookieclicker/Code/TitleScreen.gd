#main screen Control
extends Control

func _ready():
	#sets the gloabal vars the their starting amounts
	Global.Total_money = 100
	Global.Metal_amount = [0, 0, 0, 0, 0]

func _on_Start_pressed():
	#starts the game
	get_tree().change_scene("res://TheGame.tscn")
	pass # Replace with function body.


func _on_Quit_pressed():
	#exits the game
	get_tree().quit()
	pass # Replace with function body.