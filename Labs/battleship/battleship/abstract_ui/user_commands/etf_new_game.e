note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_NEW_GAME
inherit
	ETF_NEW_GAME_INTERFACE
		redefine new_game end
create
	make
feature -- command
	new_game(level: INTEGER_64)
		require else
			new_game_precond(level)
    	do
			-- perform some update on the model state
			--model.default_update

			if level ~ easy then
				model.debug_test (0)
			elseif level ~ medium then
				model.debug_test (1)
			elseif level ~ hard then
				model.debug_test (2)
			elseif level ~ advanced then
				model.debug_test (3)
			end
			etf_cmd_container.on_change.notify ([Current])
    	end

end
