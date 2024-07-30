extends Node2D

@onready var luz_lampada_03 = $Light/luz_Lampada_03
@onready var luz_lampada_02 = $Light/luz_Lampada_02

func _ready():
	%Player.Destination = Vector2(1300,227)
	%Player.SPEED = 200

func _process(delta):
	pass

func _on_area_2d_body_entered(body):
	pass


func _on_picanha_do_lulinha_body_entered(body):
	$Player.onTitle = true
	$Player.SPEED = 0
	Songs.playSFX(preload("res://assets/songs/Latido.mp3"))
	await get_tree().create_timer(2).timeout
	$Player.onTitle = false
	%Player.SPEED = 200
	$PicanhaDoLulinha.queue_free()
