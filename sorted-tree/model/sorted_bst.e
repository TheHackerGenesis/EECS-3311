note
	description: "[
		{SORTED_BST} is a concrete implementation of sorted tree. It
		inherits all of {SORTED_TREE}'s features and contracts and
		implements its deferred features.
		
		You must implement to specifications/tests
		wherever you see
			-- TO DO --
			check False end
	]"
	author: "JP, JSO"
	date: "$Date$"
	revision: "$Revision$"

class
	SORTED_BST[K -> COMPARABLE, V -> ANY]

inherit
	SORTED_TREE_ADT[K,V]

create
	make_empty

feature{NONE} -- private commands

	extend_node(a_item: TUPLE[key:K; val:V]; a_node: NODE[K,V])
			-- helper method to extend `node' with `a_item'
		do
			-- TO DO --
			if a_node.key < a_item.key then
				if attached a_node.right as r then
					extend_node (a_item, r)
				else
					a_node.right := create {NODE[K,V]}.make_red (a_item)
					if attached a_node.right as r then
						-- add balanced left
					end
				end

			elseif a_node.key > a_item.key then
				if attached a_node.left as l then
					extend_node (a_item, l)
				else
					a_node.left := create {NODE[K,V]}.make_red (a_item)
					if attached a_node.left as l then
						-- add balanced left
					end
				end
			end
		end


	remove_node(a_node: NODE[K,V])
			-- helper method to remove `node'
		local
		largest: NODE[K,V]
		l_item: TUPLE[K,V]

		do
			-- TO DO --
			if attached a_node.left as l and then attached a_node.right then
				largest := find_largest(l)
				l_item := largest.item
				remove_node(largest)
				a_node.item := l_item

			elseif attached a_node.only_child as child then
				if not a_node.is_black = child.is_black then
					a_node.set_black
				else
					a_node.set_double_black
				end
				a_node.replace_node (child)

				if a_node.is_double_black then
				end

			elseif attached a_node.parent as parent then
				if a_node.is_black then
					a_node.set_double_black
				end
				a_node.make_void

				if a_node.is_double_black and then attached parent.right as r then
				end

			else
			wipe_out
			end
		end
end
