extends Node

func say_command(text: String) -> void:
	Console.add_text(text)

func quit_command(_arg: String) -> void:
	get_tree().quit()

func _ready() -> void:
	Console.set_console_size(Vector2(550, 200))
	Console.set_position(Vector2(2, 410))
	Console.add_command("say", say_command)
	Console.add_command("quit", quit_command)
