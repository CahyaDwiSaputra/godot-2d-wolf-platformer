extends Control


@onready var Resolution_op = $OptionContainer/TabContainer/Video/Resolution_Option
@onready var MainContainer = $MainContainer
@onready var OptionContainer = $OptionContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#_load_setting()
	#Resolution_op.select(_check_resolution(DisplayServer.screen_get_size()))
	pass
	
func _check_resolution(resolution : Vector2i):
	for i in Resolution_op.get_item_count():
		if _get_resolution(i) == resolution:
			return i



func _get_resolution(index) -> Vector2i:
	var resolution_arr = Resolution_op.get_item_text(index).split("x")
	return Vector2i(int(resolution_arr[0]), int(resolution_arr[1]))


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://main_scene.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_resolution_option_item_selected(index) -> void:
	DisplayServer.window_set_size(_get_resolution(index))


func _on_option_pressed() -> void:
	MainContainer.visible = false
	OptionContainer.visible = true


func _on_window_mode_option_toggled(toggled_on: bool) -> void:
	if toggled_on == true:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)


func _on_back_button_pressed() -> void:
	MainContainer.visible = true
	OptionContainer.visible = false


func _on_mulai_pressed() -> void:
		get_tree().change_scene_to_file("res://game.tscn")


func _on_e_xit_pressed() -> void:
	get_tree().quit()
