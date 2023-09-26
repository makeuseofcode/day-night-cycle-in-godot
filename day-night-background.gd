extends Node2D

var day_duration = 5  # Duration of the day in seconds
var night_duration = 5  # Duration of the night in seconds

var is_day = true

func _ready():
	# Start the timer when the scene loads
	$DayNightTimer.start()


func _on_day_night_timer_timeout():
	if is_day:
		# Transition from day to night
		$DayNightTimer.start(night_duration)
		is_day = false
		$Background.color = Color(0.5, 0.5, 0.8)  
	else:
		# Transition from night to day
		$DayNightTimer.start(day_duration)
		is_day = true
		
		$Background.color = Color(0, 0, 0)  
