extends Node2D
class_name BoardTile

onready var tileNumber = $tileNumber

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func getTileLocation() -> Vector2:
	return Vector2(0, 0)

func setTileLocation(newPosition: Vector2) -> void:
	position = newPosition
	
func getTileNumber() -> int:
	return int(tileNumber.text)
	
func setTileNumber(tile: int) -> void:
	tileNumber.text = str(tile)
