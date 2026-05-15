extends Control
static var puntuacion = str(Escenario.score)
static var life = str(Jugador.health)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var puntuacion = str(Escenario.score)
	get_node("SCORE").text = ("SCORE: "+ puntuacion)
	var life = str(Jugador.health)
	get_node("LIFE").text = life
	pass
