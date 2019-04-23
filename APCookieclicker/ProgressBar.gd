#Copper.gd
extends ProgressBar



func _process(delta):
	while get_node("Timer").RemainingTime < 0:
		set_percent_visible(get_node("Timer").RemainingTime)