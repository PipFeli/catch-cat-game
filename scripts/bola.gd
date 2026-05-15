extends Area2D
class_name bola
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func reboot() -> void:
	position.x = randi_range(0, 256)
	position.y = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += 2 + (Escenario.score * 0.02)
		
	if position.y > 224:
		Jugador.health -= 1
		reboot()

func _on_body_entered(body: Node2D) -> void:
	Escenario.score += 1
	reboot()
