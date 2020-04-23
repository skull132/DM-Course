/datum/LazyList
	var/length
	var/list/data

/datum/LazyList/New(var/_length)
	length = _length
	data = list()

/**
 * \brief Adds \c new_member to the list. Increases length by 1.
 *
 */
/datum/LazyList/proc/Add(var/new_member)
	//data += new_member
	data.Add(new_member)

	length++

// Remove(var/value)
// Should remove ALL instances of the \c value from the \c data list.
// List length should be decreased appropriately.

// Cut()
// Cuts the list, so that you're left with an empty list (tho not null!) of length 0.

// Contains(var/value)
// Returns \c TRUE if \c value is in data, \c FALSE otherwise

// PrintList()
// Prints every value within the list to the world.

// SortAscending()
// Sorts the list in ascending order. Assume numbers only.
// For sorting algorithms, check bubble sort: https://en.wikipedia.org/wiki/Bubble_sort
// You'll need to create temporary lists within the function for this! (Maybe?)
