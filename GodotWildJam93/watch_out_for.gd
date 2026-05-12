extends Control

@export var Discription: Dictionary[int, String]
@export var Blank1: Dictionary[int, String]
@onready var label: Button = $Label
@onready var menu_select: Control = $MenuSelect

func _ready() -> void:
	SignalHub.Bounty_palced.connect(on_done_clicked)
	SignalHub.Menu_Opened.connect(on_menu_opened)

func on_menu_opened():
	menu_select.visible = false

func on_done_clicked(bounty: int, Picture: int, name: String):
	label.text = ""


func get_real_Bounty(dis: int, name: int):
	var Current_bounty: int
	if dis == 1:
		Current_bounty = 500
	if dis == 2:
		Current_bounty = 200
	if dis == 3:
		Current_bounty = 600
	if dis == 4:
		Current_bounty = 100
	if dis == 5:
		Current_bounty = 400

func _on_stealing_pressed() -> void:
	label.text = "Watch out they can use magic"

func _on_not_working_pressed() -> void:
	label.text = "Watch out they have a gun"

func _on_working_pressed() -> void:
	label.text = "Watch out they have a hostage"

func _on_reason_magic_pressed() -> void:
	label.text = ""

func _on_pleasure_magic_pressed() -> void:
	label.text = ""

func _on_moral_magic_pressed() -> void:
	label.text = ""


func _on_label_pressed() -> void:
	if menu_select.visible == false:
		SignalHub.emit_menu_opened()
		menu_select.visible = true
	elif menu_select.visible == true:
		menu_select.visible = false
