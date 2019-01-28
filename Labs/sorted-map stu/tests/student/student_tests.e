note
	description: "Summary description for {STUDENT_TESTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	STUDENT_TESTS
inherit
	ES_TEST

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
			add_boolean_case (agent t1)
			add_boolean_case (agent t2)
			add_boolean_case (agent t3)
			add_boolean_case (agent t4)
		end

feature
	t1: BOOLEAN
		local
			u: UTIL[INTEGER]

			merge_sort_test, expected: ARRAY[INTEGER]
		do
			comment("t1: Merge_Sort Test")
			create expected.make_empty
			create merge_sort_test.make_empty
			merge_sort_test.force (1, 1)
			merge_sort_test.force (3, 2)
			merge_sort_test.force (2, 3)
			merge_sort_test.force (6, 4)
			merge_sort_test.force (4, 5)

			expected.force (1, 1)
			expected.force (2, 2)
			expected.force (3, 3)
			expected.force (4, 4)
			expected.force (6, 5)
			Result := expected ~ u.merge_sort (merge_sort_test)
			check Result end
		end

	t2: BOOLEAN
		local
			u: UTIL[INTEGER]
			merge_array1, merge_array2, expected: ARRAY[INTEGER]
		do
			comment("t2: Merge Test")
			create merge_array1.make_empty
			create merge_array2.make_empty
			create expected.make_empty

			merge_array1.force (1, 1)
			merge_array1.force (2, 2)
			merge_array1.force (5, 3)

			merge_array2.force (3, 1)
			merge_array2.force (4, 2)
			merge_array2.force (6, 3)

			expected.force (1, 1)
			expected.force (2, 2)
			expected.force (3, 3)
			expected.force (4, 4)
			expected.force (5, 5)
			expected.force (6, 6)

			merge_array1 := u.merge_sort (merge_array1)
			merge_array2 := u.merge_sort (merge_array2)

			Result := expected ~ u.merge (merge_array1, merge_array2)
			check Result end

		end

	t3: BOOLEAN
		local
			u: UTIL[INTEGER]
			arr1, arr2, expected, concatenate: ARRAY[INTEGER]

		do
			comment("t3: Concatenate test")
			create arr1.make_empty
			create arr2.make_empty
			create expected.make_empty
			arr1.force (1, 1)
			arr1.force (10, 2)
			arr1.force (15, 3)

			arr2.force (3, 1)
			arr2.force (6, 2)
			arr2.force (9, 3)

			expected.force (1, 1)
			expected.force (10, 2)
			expected.force (15, 3)
			expected.force (3, 4)
			expected.force (6, 5)
			expected.force (9, 6)

			concatenate := u.concatenate (arr1, arr2)
			Result := concatenate ~ expected
			check Result end


		end

	t4: BOOLEAN
		local
				u: UTIL[INTEGER]
				merge_array1, merge_array2, expected: ARRAY[INTEGER]
			do
				comment("t2: Merge Test With 1 empty arr")
				create merge_array1.make_empty
				create merge_array2.make_empty
				create expected.make_empty

				merge_array1.force (6, 1)
				merge_array1.force (8, 2)
				merge_array1.force (4, 3)

				expected.force (4, 1)
				expected.force (6, 2)
				expected.force (8, 3)

				merge_array1 := u.merge_sort (merge_array1)
				merge_array2 := u.merge_sort (merge_array2)

				Result := expected ~ u.merge (merge_array1, merge_array2)
				check Result end
			end
end
