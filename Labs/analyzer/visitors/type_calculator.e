note
	description: "Summary description for {TYPE_CALCULATOR}."
	author: "Jackie and You"
	date: "$Date$"
	revision: "$Revision$"

class
	TYPE_CALCULATOR

inherit
	VISITOR

create
	make

feature -- Status
	type: EXPRESSION_TYPE

feature -- Constructor
	make
		do
			create {UNKNOWN_TYPE} type
		end

feature -- To Do: Implement Commands for visiting composite structure

end
