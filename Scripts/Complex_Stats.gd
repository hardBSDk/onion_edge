class stat_complex_base : extends Node
#This file contains the "state_complex_base" class
#It's purpose is to serve as a base for all "complex" stats
#A complex stat is a stat that is effected by other stats

#--Stat Information Data--#
var stat_name = "Default Complex Stat"
var max_value = 100
var def_value = 50
var is_good = true
#if true, more is better. if false, less is better

var cache_prev_values = false
#if true, it puts previous values in an array
#This can be used to graph how the value changed over time

#--Working Variables--#
var current_value = 0
var previous_value = 0

var previous_values = []
#used when cache_prev_values = true

var increase_by_next_cylce = 0
#How the value should change by the next cycle
#This should allow the game to run in steps
#by essentially caching value changes until the next step.
#This also means that "current_value" will never change during a step

func _ready():
	current_value = def_value

func value_changer(value):
	increase_by_next_cylce += value

func update_the_stat():
	previous_value = current_value
	current_value += increase_by_next_cylce
	if cache_prev_values:
		previous_values.push_back(previous_value)

func do_a_cycle():
	#This function should be called whenever a cycle occurs
	per_stat_code()
	update_the_stat()

func per_stat_code():
	#This function is intended to be overwritten,
	#allowing for each stat to change for different reasons
	pass
