#Copper Coin
extends ProgressBar

export var Proccess_Time = 2
export var metaltoCoin = 3
export var Price = 1
var can_process = true
var timer = null
signal Time_done

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
		Global.Coin_amount[Global.Metals.Copper] += 1
		emit_signal("Time_done")

func _on_ButtonCopperCoinMake_pressed():
	#makes button unpressable
	can_process = false
	#start the timer
	timer.start()
	if Global.Metal_amount[Global.Metals.Copper] >= 3:
		Global.Metal_amount[Global.Metals.Copper] -= metaltoCoin


func _process(delta):
	#set the progress bar to the remaining time
	value = timer.get_time_left()
	


func _on_ButtonCopperCoinSell_pressed():
	if Global.Coin_amount[Global.Metals.Copper] >= 1:
		Global.Coin_amount[Global.Metals.Copper] -= 1
		Global.Total_money += Price
	pass # Replace with function body.
