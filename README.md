# Godot Console Plugin


## How it Works


## API Reference

- `add_text(new_text: String, seconds: float = 4.0) -> void`:  Add text to the console window.  Automatically appends a new line.  If called when the console is not visible it will display for a few seconds.

- `set_console_size(new_size: Vector2) -> void`:  Set the console size.  This does not include the LineEdit height.  That is adjusted by the font size.

- `set_position(new_position: Vector2) -> void`:  Set the position of the console.

- `set_font_size(new_size: int) -> void`:  Set the font size.  Applies to both the window and the input field.

- `set_window_bg_color(new_color: Color) -> void`:  Sets the background color for the console window.

- `set_input_bg_color(new_color: Color) -> void`:  Sets the background color for the input text box.

- `add_command(command: StringName, callback: Callable) -> void`:  Adds a new command to the console.  The callback must accept a single string as the argument.

- `is_opened() -> bool`:  Check if the console is opened.

- `show_output(seconds: float = 4.0) -> void`:  Show the console window for a few seconds.
