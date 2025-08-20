# Godot Console Plugin

A console system for Godot.  Create your own commands or use it for chat!

## How it Works

After adding the plugin to your project, a new Console autoload will be added.  You will then need to create a keymap called `console` and assign the key you want to use to open and close the console window.  Finally create another autoload script that will contain your command functions.
When adding commands do not preface them with `/` as this will be appended for you.  When running the commands use `/`.  All text after the command will be passed as the function argument.  You can then configure the console and add commands in the `_ready()` function.

See the included example project for a working explanation.

## API Reference

- `add_text(new_text: String, seconds: float = 3.0) -> void`:  Add text to the console window.  Automatically appends a new line.  If called when the console is not visible it will display for a few seconds.

- `set_console_size(new_size: Vector2) -> void`:  Set the console size.  This does not include the LineEdit height.  That is adjusted by the font size.

- `set_position(new_position: Vector2) -> void`:  Set the position of the console.

- `set_font_size(new_size: int) -> void`:  Set the font size.  Applies to both the window and the input field.

- `set_window_bg_color(new_color: Color) -> void`:  Sets the background color for the console window.

- `set_input_bg_color(new_color: Color) -> void`:  Sets the background color for the input text box.

- `add_command(command: StringName, callback: Callable) -> void`:  Adds a new command to the console.  The callback must accept a single string as the argument.

- `is_opened() -> bool`:  Check if the console is opened.

- `show_output(seconds: float = 3.0) -> void`:  Show the console window for a few seconds.
