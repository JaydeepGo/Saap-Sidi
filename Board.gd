extends Node2D
class_name Board

const BOARD_DIMENTIONS = Vector2(10,10)


# Called when the node enters the scene tree for the first time.
func _ready():
	generateTiles() # Replace with function body.


func generateTiles() -> void:
	var tileCount = 100
	for y in range(BOARD_DIMENTIONS.y):
		var flow = int(tileCount/10) % 2
		if  flow:
			tileCount -= 9
			for x in range(BOARD_DIMENTIONS.x):
				var newTile = load("res://BoardTile.tscn").instance()
				add_child(newTile)
				newTile.setTileNumber(tileCount)
				newTile.setTileLocation(Vector2(x,y) * 64)
				tileCount += 1
			tileCount -= 11
		else:
			for x in range(BOARD_DIMENTIONS.x):
				var newTile = load("res://BoardTile.tscn").instance()
				add_child(newTile)
				newTile.setTileNumber(tileCount)
				newTile.setTileLocation(Vector2(x,y) * 64)
				tileCount -= 1

			
