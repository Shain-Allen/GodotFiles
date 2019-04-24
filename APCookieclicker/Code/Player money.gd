#Money the player has
extends Label


func _process(delta):
	self.set_text(str(Global.Total_money))