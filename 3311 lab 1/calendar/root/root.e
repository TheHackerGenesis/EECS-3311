note
	description: "ROOT class for project"
	date: "$Date$"
	revision: "$Revision$"

class
	ROOT
inherit
	ARGUMENTS_32
	ES_SUITE
create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			--| Add your code here
			print ("Hello EECS: void safe Eiffel project for 18.07!%N")
			add_test (create {TESTS}.make)
			show_browser
			run_espec
		end

end
