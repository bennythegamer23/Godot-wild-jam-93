extends Control

@export var Discription: Array[String]
@export var Blank1: Array[String]
@onready var label: Label = $Label

func _ready() -> void:
	SignalHub.Bounty_palced.connect(on_done_clicked)
	Blank1.shuffle()
	Discription.shuffle()
	label.text = str(Discription.get(0)) + " " + str(Blank1.get(0))

func on_done_clicked(bounty: int, Picture: int, name: String):
	Blank1.shuffle()
	Discription.shuffle()
	label.text = str(Discription.get(0)) + " " + str(Blank1.get(0))
