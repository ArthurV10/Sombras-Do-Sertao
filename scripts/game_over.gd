extends CanvasLayer

func _ready():
	visible = true
	
	var _tween = get_tree().create_tween()
	await _tween.tween_property($ColorRect,"color",Color(0,0,0,1),0.5).finished