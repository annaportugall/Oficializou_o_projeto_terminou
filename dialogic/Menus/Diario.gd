extends CanvasLayer

var pistas = []

func _ready():
	hide()
	
func adicionar_pista(titulo, descricao):

	var texto = titulo + "\n\n" + descricao

	var label = Label.new()

	label.text = texto

	$Janela/Conteudo/Scroll/ListaPistas.add_child(label)
	
func _input(event):

	if event.is_action_pressed("ui_diario"):

		visible = !visible
