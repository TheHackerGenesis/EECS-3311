note
	description: "[
		This utility class contains a merge sort and
		concatenate of two arrays.
		You must complete the TO DO parts
		]"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

expanded class
	UTIL [G -> COMPARABLE]

feature -- queries


	concatenate (a: ARRAY [G]; b: ARRAY [G]): ARRAY [G]
		require
			constraints_on_lower_indices:
				-- Do not modify this precondition.

				a.lower = 1 and b.lower = 1

		local i, j: INTEGER

		do

		i := a.lower
		create Result.make_empty
		across a as cursor loop Result.force (cursor.item, i)
		i := i+1 end

		j := Result.upper + 1
		across b as cursor2 loop Result.force (cursor2.item, j)
		j := j+1 end

		ensure
			constraint_on_lower_index:
				-- Do not modify this postcondition.
				Result.lower = 1
			correct_size:
				Result.count = (a.count + b.count)

			correct_contents:

			across a.lower |..| a.upper as c all a[(c.item)] = Result[c.item] end
			across b.lower |..| b.upper as c all b[(c.item)] = Result[a.upper + c.item] end
		end

	merge (left, right: ARRAY[G]): ARRAY[G]
			-- Result is a sorted merge of `left' and `right'
		require
			left_sorted: across left.lower |..| (left.upper - 1) as c all left[(c.item)] <= left[(c.item)+1] end

			right_sorted: across right.lower |..| (right.upper - 1) as c all right[(c.item)] <= right[(c.item)+1] end

		local

			i,j,k: INTEGER
		do
			create Result.make_empty
			i := 1
			j := 1


			from
				i := i

			until
				(i > left.upper) or (j > right.upper)
			loop
				if left[(i.item)] < right[(j.item)] then
				Result.force (left[(i.item)], Result.upper+1)
			--	Result[(k.item)] := left[(i.item)]
				i := i + 1
			else
				Result.force(right[(j.item)], Result.upper+1)
			--	Result[(k.item)] := right[(j.item)]
				j := j + 1
				end
			end

			--force remaining --


				from
					i := i
				until
					i > left.upper
				loop
					Result.force (left[i.item], Result.upper+1)
					i := i + 1
				end


				from
					j := j
				until
					j > right.upper
				loop
					Result.force (right[j.item], Result.upper+1)
					j := j + 1
				end

		ensure
			merge_count:
			Result.count = (left.count + right.count)

			sorted_non_descending:
			across Result.lower |..| (Result.upper - 1) as c all Result[(c.item)] <= Result[(c.item)+1] end

			merge_contains_left_and_right:
			across Result as c all left.has(c.item) or right.has(c.item) end

	--	Result ~ merge_sort(concatenate (left, right))
		end


	merge_sort(a: ARRAY[G]): ARRAY[G]
			-- reteurn a sorted version of array `a'
		local
			low, mid, high: INTEGER
			a1, a2: ARRAY[G]
		do
			create Result.make_from_array (a)
			low := a.lower
			high := a.upper
			if low < high then
				check a.count > 1 end
				mid := (low + high) // 2
				a1 := a.subarray (low, mid)
				a2 := a.subarray (mid + 1, high)
				a2.rebase (1)
				a1 := merge_sort (a1)
				a2 := merge_sort (a2)
				Result := merge (a1, a2)
			end
		ensure
			same_count:
			Result.count = a.count
				-- TO DO: replace False with your postcondition.
				-- Hint: What is the size of Result?
			sorted_non_descending:
			across 1 |..| (Result.upper - 1) as c all Result[c.item] <= Result[c.item +1]  end
				-- TO DO: replace False with your postcondition.
				-- Hint: Result is sorted in a non-descending order.
			permutation:

			across Result as c all a.occurrences (c.item) = Result.occurrences (c.item) end

				-- iterate through arrays
				-- TO DO: replace False with your postcondition.
				-- Hint: You may want to use {ARRAY}occurrences
		end
end
