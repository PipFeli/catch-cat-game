extends Control

var puntuacion = str(Escenario.score)
var best_puntuacion= str(Jugador.highScore)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_node("AudioStreamPlayer").playing = true
	get_node("Label").text = ("Puntaje: "+puntuacion)
	get_node("Label2").text = ("Puntaje Más Alto: "+best_puntuacion)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	Escenario.score *= 0
	Jugador.health = 5
	get_tree().change_scene_to_file("res://escenas/Interfaz.tscn")
	pass # Replace with function body.
