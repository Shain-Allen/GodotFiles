#Copper Coin
extends ProgressBar

export var Proccess_Time = 2
export var metaltoCoin = 3
export var Price = 1
var Turn_on = false
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
	
	connect("Time_done", get_node("TabContainer/Coins/CenterContainer/VBoxContainer/HBoxContainer/CopperCoin/VBoxContainerCopperCoin/ButtonCopperCoinMake"), "on_Time_is_done")
	emit_signal("Time_done", "can_process")

#makes button usable again
func on_timeout_complete():
	if Global.Metal_amount[Global.Metals.Copper] >= metaltoCoin:
		Turn_on = true
	Global.Coin_amount[Global.Metals.Copper] += 1

func _on_ButtonCopperCoinMake_pressed():
	Global.Metal_amount[Global.Metals.Copper] -= metaltoCoin
	#makes button unpressable
	Turn_on = false
	#start the timer
	timer.start()


func _process(delta):
	#set the progress bar to the remaining time
	value = timer.get_time_left()
	


func _on_ButtonCopperCoinSell_pressed():
	if Global.Coin_amount[Global.Metals.Copper] > 0:
		Global.Coin_amount[Global.Metals.Copper] -= 1
		Global.Total_money += Price
	pass # Replace with function body.
