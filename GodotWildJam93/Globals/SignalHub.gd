extends Node

signal Bounty_palced(money_for_bounty: int, bounty_imaged: int, Bouty_name: String)
signal Menu_Opened

func emit_Bounty_placed(money_for_bounty: int, bounty_imaged: int, Bouty_name: String):
	Bounty_palced.emit(money_for_bounty, bounty_imaged, Bouty_name)

func emit_menu_opened():
	Menu_Opened.emit()
