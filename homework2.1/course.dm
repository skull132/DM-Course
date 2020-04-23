/proc/main()
	var/datum/LazyList/a_list = new()

	b_list.Add(5)
	b_list.Add(6)

	world << (null + 6)

	world << "List length:"
	world << a_list.length
