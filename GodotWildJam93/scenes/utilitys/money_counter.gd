extends Control

@onready var money_for_bounty: Label = $MarginContainer/HBoxContainer/MoneyForBounty
@onready var money_in_vault: Label = $MarginContainer/MoneyInVault

var money: int = 100

func _ready() -> void:
	money_in_vault.text = "$" + str(GlobalVars.money_in_vault)
	money = 10

func _process(delta: float) -> void:
	money_for_bounty.text = "$" + str(money)
	money_in_vault.text = "$" + str(GlobalVars.money_in_vault)

func _on_add_10_pressed() -> void:
	money += 10
	if money >= GlobalVars.money_in_vault:
		money = GlobalVars.money_in_vault
		return


func _on_add_1_pressed() -> void:
	money += 1
	if money >= GlobalVars.money_in_vault:
		money = GlobalVars.money_in_vault
		return


func _on_remove_1_pressed() -> void:
	money -= 1
	if money <= 0:
		money = 0
		return


func _on_remove_10_pressed() -> void:
	money -= 10
	if money <= 0:
		money = 0
		return


func _on_add_100_pressed() -> void:
	money += 100
	if money >= GlobalVars.money_in_vault:
		money = GlobalVars.money_in_vault
		return

func _on_remove_100_pressed() -> void:
	money -= 100
	if money <= 0:
		money = 0
		return
