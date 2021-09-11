extends Node2D
class_name Board

const BOARD_DIMENTIONS = Vector2(10,10)

onready var player = get_tree().get_root().find_node("Player", true, false)

# Called when the node enters the scene tree for the first time.
func _ready():
	generateTiles()
	var dice = get_tree().get_root().find_node("Dice", true, false)
	dice.connect("diceOutput", self, "move")

func generateTiles() -> void:
	var tileCount = 100
	for y in range(BOARD_DIMENTIONS.y):
		var flow = int(tileCount/10) % 2
		if  flow:
			tileCount -= 9
			for x in range(BOARD_DIMENTIONS.x):
				instanceNode(x, y, tileCount)
				tileCount += 1
			tileCount -= 11
		else:
			for x in range(BOARD_DIMENTIONS.x):
				instanceNode(x, y, tileCount)
				tileCount -= 1

func instanceNode(x, y, tileNumber):
	var newTile = load("res://entities/boardTiles/BoardTile.tscn").instance()
	add_child(newTile)
	newTile.set_name('tile'+str(tileNumber))
	newTile.setTileNumber(tileNumber)
	newTile.setTileLocation(Vector2(x,y) * 64)

func move():
	player.position = Vector2.ZERO
