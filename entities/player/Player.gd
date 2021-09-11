extends Node2D


var playerPosition: int = 1
var onBoard: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func setPosition(newPosition: Vector2) -> void:
	position = newPosition
	
func getPlayerPosition() -> int:
	return playerPosition

func setPlayerPosition(newPosition: int) -> void:
	playerPosition = newPosition	
	
	
func isOnBoard():
	return onBoard
	
func setOnBoard():
	onBoard = true
