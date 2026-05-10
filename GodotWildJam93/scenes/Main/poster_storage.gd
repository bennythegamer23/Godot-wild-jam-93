extends Node2D

@export var posters: Array

func _ready() -> void:
	SignalHub.Bounty_palced.connect(add_poster_to_group)

func add_poster_to_group(bounty: int, Picture: int, name: String):
	var poster = {
		"name": name,
		"bounty": bounty,
		"Picture": Picture
	}
	posters.append(poster)
	print(posters)
