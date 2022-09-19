extends Node

func criar_som(som):
	var player = AudioStreamPlayer.new()
	player.stream = load(som)
	player.connect("finished", player, 'queue_free')
	get_tree().get_root().add_child(player)
	player.play()
