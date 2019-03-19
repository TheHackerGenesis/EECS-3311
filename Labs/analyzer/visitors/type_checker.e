note
	description: "Summary description for {TYPE_CHECKER}."
	author: "Jackie and You"
	date: "$Date$"
	revision: "$Revision$"

class
	TYPE_CHECKER

inherit
	VISITOR

create
	make

feature -- Status
	is_type_correct: BOOLEAN

feature -- Constructor
	make
		do
			is_type_correct := false
		end

feature -- To Do: Implement Commands for visiting composite structure

end
