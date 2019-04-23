#Platinum
extends ProgressBar

export var Proccess_Time = 2
var can_process = true
var timer = null

func _ready():
	#create Timer for the timer bar
	timer = Timer.new()
	#set it to run only once per button press
	timer.set_one_shot(true)
	#give the timer a time to count from
	timer.set_wait_time(Proccess_Time)
	#connect the timer
	timer.connect("timeout", self, "on_timeout_complete")
	add_child(timer)
	
	#process input event
	set_process_input(true)
	
	#process for UI
	set_process(true)
	
	max_value = Proccess_Time

#makes button usable again
func on_timeout_complete():
		can_process = true
		Global.Metal_amount[Global.Metals.Platinum] += 1

func _on_PlatinumButton_pressed():
	#makes button unpressable
	can_process = false
	#start the timer
	timer.start()

func _process(delta):
	#set the progress bar to the remaining time
	set_percent_visible(timer.get_time_left())
	
	#print(timer.get_time_left())