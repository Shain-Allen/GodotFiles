extends Control

func _ready():
	Global.Total_money = 0
	Global.Metal_amount = [0, 0, 0, 0, 0]

func _on_Start_pressed():
	get_tree().change_scene("res://TheGame.tscn")
	pass # Replace with function body.


func _on_Quit_pressed():
	get_tree().quit()
	pass # Replace with function body.
