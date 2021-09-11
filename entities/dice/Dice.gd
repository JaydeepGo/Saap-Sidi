extends Node2D
class_name Dice

signal diceOutput(output)

var rng = RandomNumberGenerator.new()

onready var rollDisplay = $rollDisplay
# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()

func roll() -> int:
	return rng.randi_range(1,6)
	
func _on_rollDisplay_gui_input(event):
	if (event is InputEventMouseButton && event.pressed && event.button_index == 1):
		var roll = str(roll())
		rollDisplay.text = roll
		print(rollDisplay.text)
		emit_signal("diceOutput", roll)

