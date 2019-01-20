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
			if a_node.key > a_item.key then
				if attached a_node.left as left then
					extend_node(a_item, left)
				else
					a_node.left := create {NODE[K,V]}.make_red (a_item)
					if attached a_node.left as left then
						--insert_balance(left)
					end
				end
			elseif a_node.key < a_item.key then
				if attached a_node.right as right then
					extend_node(a_item, right)
				else
					a_node.right := create {NODE[K,V]}.make_red (a_item)
					if attached a_node.right as right then
						--insert_balance(right)
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
			if attached a_node.left as left and then attached a_node.right then
					-- a_node has two children
				largest := find_largest(left)
				l_item := largest.item
				remove_node(largest)
				a_node.item := l_item
			elseif attached a_node.only_child as child then
					-- a_node has one child
				if not a_node.is_black = child.is_black then
					a_node.set_black
				else
					a_node.set_double_black
				end
				a_node.replace_node (child)
				if a_node.is_double_black then
					--remove_balance (a_node)
				end
			elseif attached a_node.parent as parent then
					-- a_node has no children but is not root
				if a_node.is_black then
					a_node.set_double_black
				end
				a_node.make_void
				if a_node.is_double_black and then attached parent.right as right then
					--remove_balance(right)
				end
			else
					-- a_node is root
				wipe_out
			end

		end

end
