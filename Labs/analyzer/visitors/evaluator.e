note
	description: "Summary description for {EVALUATOR}."
	author: "Jackie and You"
	date: "$Date$"
	revision: "$Revision$"

class
	EVALUATOR

inherit
	VISITOR

create
	make

feature -- Status
	value: EXPRESSION_VALUE

feature -- Constructor
	make
		do
			create {NIL} value
		end

feature {NONE} -- Helper Queries

	is_equal_within (expected, actual: REAL_64): BOOLEAN
			-- Is `expected' equal to `actual' within 0.001 tolerance?
		do
			Result := (expected - actual).abs <= 0.001
		end

feature -- To Do: Implement Commands for visiting composite structure

end
