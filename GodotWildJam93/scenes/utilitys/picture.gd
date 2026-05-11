extends Control

@onready var color_rect: ColorRect = $ColorRect
@onready var menu_select: Control = $MenuSelect

@export var pictures: Dictionary[int, Color]
var current_picture
var picture_number

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SignalHub.Bounty_palced.connect(on_done_clicked)

func on_done_clicked(bounty: int, Picture: int, name: String):
	color_rect.visible = false

func _on_stealing_pressed() -> void:
	color_rect.visible = true
	color_rect.color = Color(1, 0, 0)


func _on_not_working_pressed() -> void:
	color_rect.visible = true
	color_rect.color = Color(0.0, 1.0, 0.0, 1.0)


func _on_working_pressed() -> void:
	color_rect.visible = true
	color_rect.color = Color(0.0, 0.0, 1.0, 1.0)


func _on_reason_magic_pressed() -> void:
	color_rect.visible = true
	color_rect.color = Color(1.0, 1.0, 0.0, 1.0)


func _on_pleasure_magic_pressed() -> void:
	color_rect.visible = true
	color_rect.color = Color(1.0, 0.0, 1.0, 1.0)


func _on_button_pressed() -> void:
	if menu_select.visible == true:
		menu_select.visible = false
	elif menu_select.visible == false:
		menu_select.visible = true
