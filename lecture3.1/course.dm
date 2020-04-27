/proc/main()

	var/datum/calculator/tor = new()

	world << "Before loop."

	while (tor.IsRunning())
		tor.GetInput()

		tor.Calculate()
		world << "Loop iteration end."

	world << "Main end."
