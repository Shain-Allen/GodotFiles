extends Label

var metal = null

func _process(delta):
	#sets the amount of metal of the given type to the text box
	self.set_text(str(Global.Metal_amount[Global.Metals.Bronze]))