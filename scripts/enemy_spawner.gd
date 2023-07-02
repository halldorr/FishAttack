extends Node2D

signal enemySpawned(enemyInstance)
signal pathEnemySpawned(pathEnemyInstance)

##var enemyScene = preload("res://scenes/enemy.tscn")
@onready var spawnPositions = $SpawnPositions

func _on_timer_timeout():
	spawnEnemy()

func spawnEnemy():
	var spawnPositionsArray = spawnPositions.get_children()
	var randomSpawnPosition = spawnPositionsArray.pick_random()
	#var enemyInstance = enemyScene.instantiate()
	#enemyInstance.global_position = randomSpawnPosition.global_position
	#emit_signal("enemySpawned", enemyInstance)
	#enemyInstance.global_position.x += 80
