extends Interactible

@onready var shop = get_tree().get_root().get_node("VillageView/Popups/Shop")

func initializers():
	if not shop:
		print("Doesnt exist yet")
		return ;

func action():
	shop.visible = !shop.visible
