#Copper.gd
extends ProgressBar



func _process(delta):
	set_percent_visible(get_node_or_null(("Timer").RemainingTime))