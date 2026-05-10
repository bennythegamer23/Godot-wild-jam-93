extends MeshInstance2D

@export var pictures: Dictionary[int, Color]
var current_picture
var picture_number

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SignalHub.Bounty_palced.connect(on_done_clicked)
	picture_number = randi_range(1, 5)
	current_picture = pictures.get(picture_number)
	modulate = current_picture
	print(picture_number)

func on_done_clicked(bounty: int, Picture: int, name: String):
	picture_number = randi_range(1, 5)
	current_picture = pictures.get(picture_number)
	modulate = current_picture
	print(picture_number)
