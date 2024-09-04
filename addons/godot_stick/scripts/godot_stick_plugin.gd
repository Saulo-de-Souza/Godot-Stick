@tool
extends EditorPlugin

func _enter_tree():
	var joystick_icon = preload("res://addons/godot_stick/textures/icon-plugin.png")
	add_custom_type("GodotStick", "Control", preload("res://addons/godot_stick/scripts/godot_stick.gd"), joystick_icon)

func _exit_tree():
	remove_custom_type("GodotStick")
