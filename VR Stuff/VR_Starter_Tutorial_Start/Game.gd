extends Spatial

func _ready():
	var arvr_interface = ARVRServer.find_interface("OpenVR")
	if(arvr_interface and arvr_interface.initialize()):
		get_viewport().arvr = true
		get_viewport().hdr = false
		# Also, the physics FPS in the project settings is also 90 FPS. This makes the physics
        # run at the same frame rate as the display, which makes things look smoother in VR!
