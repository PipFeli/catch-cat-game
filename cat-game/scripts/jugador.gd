extends CharacterBody2D
class_name Jugador

var retorno = preload("res://escenas/Interfaz.tscn").instantiate()
static var highScore = 0

static var health = 5
var velocidad = 40
var aceleracion = velocidad

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	
func lose():
	if Escenario.score > highScore:
		highScore = Escenario.score
		
	get_tree().change_scene_to_file("res://escenas/Lose.tscn")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed('rapidez'):
		aceleracion = velocidad * 1.8
	else:
		aceleracion = velocidad
		
	if Input.is_action_pressed("izquierda"):
		position.x -= aceleracion/10
	if Input.is_action_pressed("derecha"):
		position.x += aceleracion/10
		
	if health == 0:
		lose()
