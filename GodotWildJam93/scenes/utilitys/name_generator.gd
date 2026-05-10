extends Control

@export var first_names: Array[String]
@export var last_names: Array[String]
@onready var label: Label = $Label
var full_name

func _ready() -> void:
	SignalHub.Bounty_palced.connect(on_done_clicked)
	var first_name = first_names.duplicate()
	var last_name = last_names.duplicate()
	first_name.shuffle()
	last_name.shuffle()
	full_name = first_name.get(0) + " " + last_name.get(0)
	label.text = full_name

func on_done_clicked(bounty: int, Picture: int, name: String):
	var first_name = first_names.duplicate()
	var last_name = last_names.duplicate()
	first_name.shuffle()
	last_name.shuffle()
	full_name = first_name.get(0) + " " + last_name.get(0)
	label.text = full_name
