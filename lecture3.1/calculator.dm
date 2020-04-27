#define OPERATION_ADD "Add"
#define OPERATION_SUB "Subtract"
#define OPERATION_MUL "Multiply"
#define OPERATION_DIV "Divide"

/datum/calculator
	var/operand_a
	var/operand_b
	var/operation

	var/result

	var/is_first_iteration = TRUE

/**
 * IsRunning()
 *
 * \brief Returns \c TRUE to indicate if the calculator's loop should continue running.
 * The first call to the function always returns \c TRUE.
 */
/datum/calculator/proc/IsRunning()
	if (is_first_iteration)
		world << "IsRunning: first invokation."
		is_first_iteration = FALSE

		return TRUE
	else
		world << "IsRunning: n+1-st invokation."

		var/cont_answer = alert(usr, "Calculate again?", , "Yes", "No")
		if (cont_answer == "Yes")
			return TRUE
		else
			return FALSE

/**
 * GetInput()
 *
 * \brief Asks the user for the a, and b operands, and for the
 * operation.
 */
/datum/calculator/proc/GetInput()
	operand_a = input("First operand") as num
	operand_b = input("Second operand") as num

	operation = input("Operation to do") in list(OPERATION_ADD, OPERATION_SUB, OPERATION_MUL, OPERATION_DIV)

	if (operation == OPERATION_DIV)
		if (operand_b == 0)
			world << "Bad second operand for division: must not be 0."
			operand_b = 1

/**
 * Calculate()
 *
 * \brief Carries out operation \c operation with operands \c operand_a and \c operand_b.
 * Result is saved to \c result.
 */
/datum/calculator/proc/Calculate()
	if (operation == OPERATION_ADD)
		result = operand_a + operand_b
	else if (operation == OPERATION_SUB)
		result = operand_a - operand_b
	else if (operation == OPERATION_MUL)
		result = operand_a * operand_b
	else
		result = operand_a / operand_b

	world << "Result of [operation] with [operand_a] and [operand_b]:"
	world << "[result]"
