note
	description: "A default business model."
	author: "Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_MODEL

inherit
	ANY
		redefine
			out
		end

create {ETF_MODEL_ACCESS}
	make

feature {NONE} -- Initialization
	make
			-- Initialization for `Current'.
		do
			create s.make_empty
			create game.make_empty
			create new_ships.make (0)
			shots := 0
			bombs := 0
			score := 0
			ships := 0
			s := "Start a new game"
			state := 0
		end

feature -- Implementation
	game : BOARD

	new_ships: ARRAYED_LIST[TUPLE[size: INTEGER; row: INTEGER; col: INTEGER; dir: BOOLEAN]]

	ship_gen : SHIP_GEN
		attribute
			create Result.make
		end

feature -- model attributes
	s : STRING
	state : INTEGER
	shots: INTEGER
	bombs: INTEGER
	score: INTEGER
	ships: INTEGER
	--shots_s: STRING
	destroyed: BOOLEAN
	easy, medium, hard, advanced: BOOLEAN

feature -- model queries
	is_cell_filled (row, col: INTEGER): BOOLEAN
		do
			Result := (game.board.item (row, col) /= create {SHIP_ALPHABET}.make ('_'))
		end

feature -- ship generation

	easy_gen (is_debug: BOOLEAN)
		do
			new_ships := ship_gen.generate_ships (is_debug, 4, 2)
			ship_gen.place_new_ships (game.board, new_ships)
		end

	medium_gen (is_debug: BOOLEAN)
		do
			new_ships := ship_gen.generate_ships (is_debug, 6, 3)
			ship_gen.place_new_ships (game.board, new_ships)
		end

	hard_gen (is_debug: BOOLEAN)
		do
			new_ships := ship_gen.generate_ships (is_debug, 8, 5)
			ship_gen.place_new_ships (game.board, new_ships)
		end

	advanced_gen (is_debug: BOOLEAN)
		do
			new_ships := ship_gen.generate_ships (is_debug, 12, 7)
			ship_gen.place_new_ships (game.board, new_ships)
		end

feature -- model operations
	default_update
			-- Perform update to the model state.
		do
			--i := i + 1
		end

	clear
		do
			shots := 0
			bombs := 0
			score := 0
			ships := 0
		end

	debug_test (level: INTEGER)
		do
			easy := true
			medium := true
			hard := true
			advanced := true
			if level ~ 0 and easy then
				s := "Fire Away!"
				state := state + 1
				game.make_easy
				easy_gen (true)
			elseif level ~ 1 and medium then
				easy := false
				game.make_medium
				medium_gen (true)
				clear
			elseif level ~ 2 and hard then
				easy := false
				medium := false
				game.make_hard
				hard_gen (true)
				clear
			elseif level ~ 3 and advanced then
				easy := false
				medium := false
				hard := false
				game.make_advanced
				advanced_gen (true)
				clear
			end
		end

	new_game (level: INTEGER)
		do
			if level ~ 0 then
				game.make_easy
			elseif level ~ 1 then
				game.make_medium
			elseif level ~ 2 then
				game.make_hard
			elseif level ~ 3 then
				game.make_advanced
			end
		end

	fire(coordinate: TUPLE[row: INTEGER_64; column: INTEGER_64])
		local
			r : INTEGER
			c : INTEGER
		do
			r := coordinate.row.to_integer_32
			c := coordinate.column.to_integer_32

--			if game.board.item (r, c) ~ create {SHIP_ALPHABET}.make ('_') then
--				game.board.put (create {SHIP_ALPHABET}.make ('O'), r, c)
--				shots := shots + 1
--			elseif game.board.item (r, c) ~ create {SHIP_ALPHABET}.make ('v') then
--				game.board.put (create {SHIP_ALPHABET}.make ('X'), r, c)
--				shots := shots + 1
--			elseif game.board.item (r, c) ~ create {SHIP_ALPHABET}.make ('h') then
--				game.board.put (create {SHIP_ALPHABET}.make ('X'), r, c)
--				shots := shots + 1
--			end

			-- maybe go across new_ships array and then check if ships are equal to 'X', if they are then add a score
			if game.board[r, c] ~ create {SHIP_ALPHABET}.make ('_') then
				s := "Miss! Keep Firing!"
				state := state + 1
				game.board.put (create {SHIP_ALPHABET}.make ('O'), r, c)
				shots := shots + 1
			end

			across
				new_ships as new_s
			loop
				if new_s.item.dir then
					across
						1 |..| new_s.item.size as cursor
					loop
						if game.board[new_s.item.row + cursor.item, new_s.item.col] ~ game.board[r, c] then
							s := "Hit! Keep Firing!"
							state := state + 1
							game.board.put (create {SHIP_ALPHABET}.make ('X'), r, c)
							shots := shots + 1
							if game.board[new_s.item.row + cursor.item, new_s.item.col] ~ create {SHIP_ALPHABET}.make ('X') and cursor.item ~ new_s.item.size then

								ships := ships + 1
							end
						end
					end
				else
					across
						1 |..| new_s.item.size as cursor
					loop
						if game.board[new_s.item.row, new_s.item.col + cursor.item] ~ game.board[r, c] then
							s := "Hit! Keep Firing!"
							state := state + 1
							game.board.put (create {SHIP_ALPHABET}.make ('X'), r, c)
							shots := shots + 1
							if game.board[new_s.item.row, new_s.item.col + cursor.item] ~ create {SHIP_ALPHABET}.make ('X') and cursor.item ~ new_s.item.size then

								ships := ships + 1
							end
						end
					end
				end
			end



		end

	reset
			-- Reset model state.
		do
			make
		end

feature -- queries
	out : STRING
		do
--			create Result.make_from_string ("  ")
--			Result.append ("System State: default model state ")
--			Result.append ("(")
--			Result.append (i.out)
--			Result.append (")")

			create Result.make_empty

			Result.append ("State " + state.out + " OK -> " + s)
			Result.append (game.out)
			--Result.append("%N")
--			Result.append ("%NShots: " + shots.out + "/8")
--			Result.append ("%NBombs: " + bombs.out + "/2")
--			Result.append ("%NScore: " + score.out + "/3")
--			Result.append ("%NShips: " + shots.out + "/2")

			if easy then
				Result.append ("%NShots: " + shots.out + "/8")
				Result.append ("%NBombs: " + bombs.out + "/2")
				Result.append ("%NScore: " + score.out + "/3")
				Result.append ("%NShips: " + ships.out + "/2")
				Result.append ("%N  2x1: ")
				Result.append ("%N  1x1: ")
			elseif medium then
				Result.append ("%NShots: " + shots.out + "/16")
				Result.append ("%NBombs: " + bombs.out + "/3")
				Result.append ("%NScore: " + score.out + "/3")
				Result.append ("%NShips: " + ships.out + "/3")
			elseif hard then
				Result.append ("%NShots: " + shots.out + "/24")
				Result.append ("%NBombs: " + bombs.out + "/5")
				Result.append ("%NScore: " + score.out + "/3")
				Result.append ("%NShips: " + ships.out + "/5")
			elseif advanced then
				Result.append ("%NShots: " + shots.out + "/40")
				Result.append ("%NBombs: " + bombs.out + "/7")
				Result.append ("%NScore: " + score.out + "/3")
				Result.append ("%NShips: " + ships.out + "/7")
			end
		end

end




