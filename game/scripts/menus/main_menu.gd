extends Control

func _ready():
	Global.player_health = 200

func _on_start_pressed():
	get_tree().change_scene_to_file("res://scenes/fight_screen.tscn")

func _on_quit_pressed():
	get_tree().quit()
