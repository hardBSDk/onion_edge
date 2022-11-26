extends Node

var stat = 1
var currency = 0

func _physics_process(delta):
	pass

func increase_stats(stat, amount):
	stat += amount

func decrease_stats(stat, amount):
	stat -= amount

func purchase(buyer, seller, amount, cost):
	buyer.stat += amount
	seller.stat -= amount
	buyer.currency -= cost
	seller.currency += cost
