extends Label

var metal = null

func _process(delta):
	self.set_text(str(Global.Metal_amount[Global.Metals.Silver]))