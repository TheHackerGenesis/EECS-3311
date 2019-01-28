note
	description: "Summary description for {SORTED_MODEL_MAP}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SORTED_MODEL_MAP [K -> COMPARABLE, V -> ANY]

inherit
	SORTED_MAP_ADT[K, V]

create
	make_empty,
	make_from_array,
	make_from_sorted_map

feature -- Model

	model: FUN [K, V]
			-- ABSTRACTION FUNCTION
		do
			Result := implementation
		end

feature{NONE} -- Attributes

	implementation: FUN[K,V]
			-- INEFFICIENT BUT ABSTRACT IMPLEMENTATION OF SORTED MAP
		attribute
			create Result.make_empty
		end

	make_empty

			-- creates a sorted map without any elements
		do

		implementation.make_empty

		end

	make_from_array (array: ARRAY [TUPLE [key: K; val: V]])
			-- creates a sorted map with the elements of the `array'
		do

		implementation.make_from_array (array)

		end

	make_from_sorted_map (map: SORTED_MAP_ADT [K, V])
			-- creates a sorted map from `other'
		do

		implementation := map.model

		end

feature
	put (val: V; key: K) --(key: K; val: V)
			-- puts an element of `key' and `value' into map
			-- behaves like `extend' if `key' does not exist
			-- otherwise behaves like `replace'
			-- NOTE: This method follows the convention of `val'/`key'
		do
			if not has(key) then
				extend (key, val)
			else
				replace (key, val)
			end
		end

	extend (key: K; val: V)
			-- inserts an element of `key' and `value' into map
		local
			pair: PAIR[k, v]
		do
			create pair.make(key, val)
			implementation.extend(pair)
		end

	remove (key: K)
			-- removes an element whose value is `key' from the map
		local
			pair: PAIR[k, v]
		do
			create pair.make (key, implementation[key])
			implementation.subtract (pair)
		end

	replace (key: K; val: V)
			-- replaces `value' for a given `key'
		local
			pair: PAIR[k, v]
		do
			create pair.make(key, val)
			implementation.override_by (pair.as_tuple)
		end

	replace_key (old_key, new_key: K)
			-- replaces `old_key' with `new_key' for an element
	local
		tempvalue: V
		pair: PAIR[k, v]

	do
		tempvalue := implementation[old_key]
		create pair.make (old_key, tempvalue)
		implementation.subtract (pair)
		pair.make (new_key, tempvalue)
		implementation.extend (pair)
	end

	wipe_out
			--makes an existing map empty
		do
			implementation.make_empty
		end

	item alias "[]" (key: K): V assign put
			--returns the value associated with `key'
		do
			Result := implementation[key]
		end

	as_array: ARRAY [TUPLE [key: K; value: V]]
			-- returns an array of tuples sorted by key
		do
			create Result.make_empty
			across sorted_keys as i
			loop
				Result.force ([i.item,model[i.item]], Result.count + 1)
			end
		end

	sorted_keys: ARRAY [K]
			-- returns a sorted array of keys
		local
			key_array: ARRAY[K]
			U: UTIL[K]
		do
			create key_array.make_empty
			key_array := model.domain.as_array
			key_array := u.merge_sort (key_array)
			Result := key_array
		end

	values: ARRAY [V]
			--returns an array of values sorted by key
		local
			array: ARRAY[K]
		do
			create Result.make_empty
			across sorted_keys as i loop Result.force(implementation[i.item], (Result.upper +1))  end
		end

	has (key: K): BOOLEAN
			-- returns whether `key' exists in the map
		do
			Result := model.domain.has (key)
		end

	has_value(val: V): BOOLEAN
			-- returns whether `val' exists in the map
		do
			Result := model.range.has (val)
		end

	element (key: K): detachable TUPLE [key: K; val:V]
			-- returns an element of the map (i.e. a tuple [`key', value])
			-- associated with `key'
		do
			if has(key) then
				Result := [key, model[key]]
			else
				Result := VOID
			end

		end

	count: INTEGER
			--returns number of elements in the map
		do
			Result := model.count
		end

	is_empty: BOOLEAN
			-- returns whether the map is empty
		do
			Result := count = 0
		end

	min: TUPLE [key: K; val: V]
			--returns the element with the smallest key in the map
		do
			Result := as_array[1]
		end

	max: TUPLE [key: K; val: V]
			--returns the element with the largest key in the map
		do
			Result := as_array[count]
		end

end
