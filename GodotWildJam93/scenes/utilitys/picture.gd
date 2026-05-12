extends Control

@onready var color_rect: ColorRect = $ColorRect
@onready var menu_select: Control = $MenuSelect

@export var pictures: Dictionary[int, Color]
var current_picture
var picture_number = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SignalHub.Bounty_palced.connect(on_done_clicked)
	SignalHub.Menu_Opened.connect(on_menu_opened)

func on_menu_opened():
	menu_select.visible = false

func on_done_clicked(bounty: int, Picture: int, name: String):
	color_rect.visible = false
	picture_number = 0

func _on_stealing_pressed() -> void:
	color_rect.visible = true
	picture_number = 1
	color_rect.color = Color(1, 0, 0)


func _on_not_working_pressed() -> void:
	color_rect.visible = true
	picture_number = 2
	color_rect.color = Color(0.0, 1.0, 0.0, 1.0)


func _on_working_pressed() -> void:
	color_rect.visible = true
	picture_number = 3
	color_rect.color = Color(0.0, 0.0, 1.0, 1.0)


func _on_reason_magic_pressed() -> void:
	color_rect.visible = true
	picture_number = 5
	color_rect.color = Color(1.0, 1.0, 0.0, 1.0)


func _on_pleasure_magic_pressed() -> void:
	color_rect.visible = true
	picture_number = 4
	color_rect.color = Color(1.0, 0.0, 1.0, 1.0)


func _on_button_pressed() -> void:
	if menu_select.visible == false:
		SignalHub.emit_menu_opened()
		menu_select.visible = true
	elif menu_select.visible == true:
		menu_select.visible = false
