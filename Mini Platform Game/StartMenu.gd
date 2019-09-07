#start menu.gd
extends Control



func _on_Start_game_pressed():
	get_tree().change_scene("res://world.tscn")


func _on_Quit_game_pressed():
	get_tree().quit()
