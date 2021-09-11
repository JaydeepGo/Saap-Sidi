extends Node2D
class_name Dice

var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()

func roll() -> int:
	return rng.randi_range(1,6)
	
