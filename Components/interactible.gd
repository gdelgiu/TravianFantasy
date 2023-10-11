class_name Interactible
extends Area2D


enum {
	OVERING,
	IDLE
}


func _ready():
	set_process(false)
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)
	initializers()


func _process(_delta):
	runnables()

func initializers():
	pass

func runnables():
	if Input.is_action_just_pressed("ui_select"):
		action()

func action():
	print("debug")


func _on_mouse_entered():
	set_process(true)


func _on_mouse_exited():
	set_process(false)
