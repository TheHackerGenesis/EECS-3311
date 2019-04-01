note
	description: "Move operation with undo/redo"
	author: "JSO"
	date: "$Date$"
	revision: "$Revision$"

class
	MOVE_BISHOP

inherit

	MOVE
		redefine
			out
		end

	DEBUG_OUTPUT
		redefine
			out
		end

create
	make

feature {NONE} -- constructor

	make(a_new_position: SQUARE)
		do
			old_position := board.bishop_position
			position := a_new_position
		end

feature -- queries
		old_position: SQUARE
		position: SQUARE

	directions: ARRAY[TUPLE[x: INTEGER; y: INTEGER]]
		local
			x,y: INTEGER
		do
			create Result.make_empty
			across 1 |..| 7 as i loop
				across 0 |..| 1 as x_sign loop
				across 0 |..| 1 as y_sign loop
					x := i.item
					if x_sign.item = 0 then
						x := x * -1
					end
					y := i.item
					if y_sign.item = 0 then
						y := y * -1
					end
					Result.force ([x, y], Result.count + 1)
				end
				end
			end
		end



feature -- commands

	execute
		do
				-- To Do
				board.move_bishop (position)
		end


	undo
		do

				-- To Do
				board.move_bishop (old_position)
		end

	redo
		do
			execute
		end

feature

	out: STRING
		do
			Result := ""
		end

	debug_output: STRING
		do
			Result := out
		end

end
