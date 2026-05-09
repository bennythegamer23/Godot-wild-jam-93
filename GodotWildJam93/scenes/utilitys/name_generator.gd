extends Control

@export var first_names: Array[String]
@export var last_names: Array[String]
@onready var label: Label = $Label

func _ready() -> void:
	var first_name = first_names.duplicate()
	var last_name = last_names.duplicate()
	first_name.shuffle()
	last_name.shuffle()
	label.text = str(first_name.get(0)) + " " + str(last_name.get(0))
