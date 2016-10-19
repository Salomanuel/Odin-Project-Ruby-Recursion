def moveTower(disc, source, destination, spare)
	if disc == 1
		move disk from source to destination
	else
		moveTower(disc-1,source,spare,destination)
		move disk from source to destination
		moveTower(disc-1,spare,destination,source)
	end
end