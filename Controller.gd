extends Node2D

onready var player = get_tree().get_root().find_node("Player", true, false)
onready var board = get_tree().get_root().find_node("Board", true, false)

func _ready():
	var dice = get_tree().get_root().find_node("Dice", true, false)
	dice.connect("diceOutput", self, "move")

func move(p1):
	if player.isOnBoard():
		var tileLocation = player.getPlayerPosition() + int(p1)
		player.setPosition(getDestinationTilePosition(tileLocation))
		player.setPlayerPosition(tileLocation)
		
	else:
		player.setOnBoard()
		player.get_parent().remove_child(player)
		board.add_child(player) 
		player.setPosition(getDestinationTilePosition(1))

func getDestinationTilePosition(distanceToMove):
	var destinationTile = get_tree().get_root().find_node("tile"+str(distanceToMove), true, false)
	if destinationTile:
		return destinationTile.getTileLocation()
	else:
		return Vector2.ZERO
