extends Node

# Stats implementation WIP

class_name Stats extends Resource

# Variables - Stats Names

export var wheat := 10.000
export var sword := 1.000
export var horses := 50
export var guns := 0
export var planes := 0
export var ships := 0
export var tanks := 0
export var grains := 7000
export var water := 10.000
export var silver := 5000
export var iron := 3.000
export var gold := 100
export var steel := 0
export var youth := 17.500
export var cars := 0
export var trucks := 0
export var arrows := 0
export var bows := 0
export var ammo := 0
export var grenades := 0
export var swords := 1000
export var citizens := 50.000
export var meat := 50
export var bread := 0
export var oil := 0
export var wood := 6.000
export var houses := 1.000
export var business := 500
export var banks := 0
export var soldiers := 5.000
export var money := 15.000.000

# Timers

var timer_1s: Timer = Timer.new()
var timer_2s: Timer = Timer.new()
var timer_3s: Timer = Timer.new()
var timer_4s: Timer = Timer.new()
var timer_5s: Timer = Timer.new()
var timer_7s: Timer = Timer.new()
var timer_14s: Timer = Timer.new()
var timer_15s: Timer = Timer.new()
var timer_30s: Timer = Timer.new()
var timer_1m: Timer = Timer.new()
var timer_3m: Timer = Timer.new()
var timer_5m: Timer = Timer.new()
var timer_10m: Timer = Timer.new()
var timer_12m: Timer = Timer.new()
var timer_20m: Timer = Timer.new()
var timer_22m: Timer = Timer.new()
var timer_24m: Timer = Timer.new()
var timer_26m: Timer = Timer.new()
var timer_30m: Timer = Timer.new()

# Timers Logic

func _ready():
    timer_1s.one_shot = false
    timer_1s.wait_time = 1
    add_child(timer_1s)
    timer_1s.connect("timeout", self, "increase_value1s")
    timer_1s.start()

func _ready():
    timer_2s.one_shot = false
    timer_2s.wait_time = 2
    add_child(timer_2s)
    timer_2s.connect("timeout", self, "increase_value2s")
    timer_2s.start()

func _ready():
    timer_3s.one_shot = false
    timer_3s.wait_time = 3
    add_child(timer_x)
    timer_3s.connect("timeout", self, "increase_value3s")
    timer_3s.start()

func _ready():
    timer_4s.one_shot = false
    timer_4s.wait_time = 4
    add_child(timer_x)
    timer_4s.connect("timeout", self, "increase_value4s")
    timer_4s.start()

func _ready():
    timer_5s.one_shot = false
    timer_5s.wait_time = 5
    add_child(timer_5s)
    timer_5s.connect("timeout", self, "increase_value5s")
    timer_5s.start()

func _ready():
    timer_7s.one_shot = false
    timer_7s.wait_time = 7
    add_child(timer_7s)
    timer_7s.connect("timeout", self, "increase_value7s")
    timer_7s.start()

func _ready():
    timer_14s.one_shot = false
    timer_14s.wait_time = 14
    add_child(timer_14s)
    timer_14s.connect("timeout", self, "increase_value14s")
    timer_14s.start()

func _ready():
    timer_15s.one_shot = false
    timer_15s.wait_time = 15
    add_child(timer_15s)
    timer_15s.connect("timeout", self, "increase_value15s")
    timer_15s.start()

func _ready():
    timer_30s.one_shot = false
    timer_30s.wait_time = 30
    add_child(timer_30s)
    timer_30s.connect("timeout", self, "increase_value30s")
    timer_30s.start()

func _ready():
    timer_1m.one_shot = false
    timer_1m.wait_time = 60
    add_child(timer_1m)
    timer_1m.connect("timeout", self, "increase_value1m")
    timer_1m.start()

func _ready():
    timer_3m.one_shot = false
    timer_3m.wait_time = 180
    add_child(timer_3m)
    timer_3m.connect("timeout", self, "increase_value3m")
    timer_3m.start()

func _ready():
    timer_5m.one_shot = false
    timer_5m.wait_time = 300
    add_child(timer_5m)
    timer_5m.connect("timeout", self, "increase_value5m")
    timer_5m.start()

func _ready():
    timer_10m.one_shot = false
    timer_10m.wait_time = 600
    add_child(timer_10m)
    timer_10m.connect("timeout", self, "increase_value10m")
    timer_10m.start()

func _ready():
    timer_12m.one_shot = false
    timer_12m.wait_time = 720
    add_child(timer_12m)
    timer_12m.connect("timeout", self, "increase_value12m")
    timer_12m.start()

func _ready():
    timer_20m.one_shot = false
    timer_20m.wait_time = 1200
    add_child(timer_20m)
    timer_20m.connect("timeout", self, "increase_value20m")
    timer_20m.start()

func _ready():
    timer_22m.one_shot = false
    timer_22m.wait_time = 1320
    add_child(timer_22m)
    timer_22m.connect("timeout", self, "increase_value22m")
    timer_22m.start()

func _ready():
    timer_24m.one_shot = false
    timer_24m.wait_time = 1440
    add_child(timer_24m)
    timer_24m.connect("timeout", self, "increase_value24m")
    timer_24m.start()

func _ready():
    timer_26m.one_shot = false
    timer_26m.wait_time = 1560
    add_child(timer_26m)
    timer_26m.connect("timeout", self, "increase_value26m")
    timer_26m.start()

func _ready():
    timer_30m.one_shot = false
    timer_30m.wait_time = 1800
    add_child(timer_30m)
    timer_30m.connect("timeout", self, "increase_value30m")
    timer_30m.start()

# Functions to increase/decrease stats

func increase_value1s():
    steel = steel + 50

func increase_value2s():
    value = value + 4

func increase_value3s():
    meat = meat + 10

func increase_value4s():
    value = value + 15

func increase_value5s():
    value = value + 1

func increase_value7s():
    iron = iron + 300
    silver = silver + 400
    wood = wood + 100

func increase_value14s():
    value = value + 1

func increase_value15s():
    value = value + 1

func increase_value30s():
    water = water + 250

func increase_value1m():
    value = value + 1

func increase_value3m():
    wheat = wheat + 700
    wheat = wheat + 500

func increase_value5m():
    value = value + 1

func increase_value10m():
    value = value + 1

func increase_value12m():
    value = value + 1

func increase_value20m():
    value = value + 1

func increase_value22m():
    value = value + 1

func increase_value24m():
    value = value + 1

func increase_value26m():
    value = value + 1

func increase_value30m():
    value = value + 1

var houses := 0 setget set_houses
var country := 0

func set_houses(value: int) -> void:
    houses = value
    country = houses / 5

var stat = 1
var currency = 0

#func _physics_process(delta):
#	pass
# That isn't needed if it contains nothing, but it can have a minor performance impact.

func increase_stats(stat, amount):
	stat += amount

func decrease_stats(stat, amount):
	stat -= amount

func purchase(buyer, seller, amount, cost):
	buyer.stat += amount
	seller.stat -= amount
	buyer.currency -= cost
	seller.currency += cost
