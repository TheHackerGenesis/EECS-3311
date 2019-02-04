/*
 * Class DATE_TIME_VALIDITY_CHECKER
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static const EIF_TYPE_INDEX egt_0_1000 [] = {0xFF01,232,0xFFFF};
static const EIF_TYPE_INDEX egt_1_1000 [] = {0xFF01,245,999,0xFFFF};
static const EIF_TYPE_INDEX egt_2_1000 [] = {0xFF01,999,0xFFFF};
static const EIF_TYPE_INDEX egt_3_1000 [] = {0,0xFFFF};
static const EIF_TYPE_INDEX egt_4_1000 [] = {0,0xFFFF};
static const EIF_TYPE_INDEX egt_5_1000 [] = {0xFF01,999,0xFFFF};
static const EIF_TYPE_INDEX egt_6_1000 [] = {0xFF01,999,0xFFFF};
static const EIF_TYPE_INDEX egt_7_1000 [] = {0,0xFFFF};
static const EIF_TYPE_INDEX egt_8_1000 [] = {0xFF01,16,0xFFFF};
static const EIF_TYPE_INDEX egt_9_1000 [] = {0xFF01,232,0xFFFF};
static const EIF_TYPE_INDEX egt_10_1000 [] = {0xFF01,232,0xFFFF};
static const EIF_TYPE_INDEX egt_11_1000 [] = {0xFF01,17,0xFFFF};
static const EIF_TYPE_INDEX egt_12_1000 [] = {0xFF01,999,0xFFFF};
static const EIF_TYPE_INDEX egt_13_1000 [] = {0xFF01,961,0xFFFF};
static const EIF_TYPE_INDEX egt_14_1000 [] = {0xFF01,232,0xFFFF};
static const EIF_TYPE_INDEX egt_15_1000 [] = {0xFF01,232,0xFFFF};
static const EIF_TYPE_INDEX egt_16_1000 [] = {0xFF01,251,0xFF01,232,0xFFFF};
static const EIF_TYPE_INDEX egt_17_1000 [] = {0xFF01,251,0xFF01,232,0xFFFF};
static const EIF_TYPE_INDEX egt_18_1000 [] = {0xFF01,251,0xFF01,232,0xFFFF};
static const EIF_TYPE_INDEX egt_19_1000 [] = {0xFF01,251,0xFF01,232,0xFFFF};
static const EIF_TYPE_INDEX egt_20_1000 [] = {0xFF01,589,218,0xFFFF};
static const EIF_TYPE_INDEX egt_21_1000 [] = {0xFF01,159,0xFFFF};
static const EIF_TYPE_INDEX egt_22_1000 [] = {0xFF01,232,0xFFFF};
static const EIF_TYPE_INDEX egt_23_1000 [] = {0xFF01,232,0xFFFF};


static const struct desc_info desc_1000[] = {
	{EIF_GENERIC(NULL), 0xFFFFFFFF, 0xFFFFFFFF},
	{EIF_GENERIC(egt_0_1000), 0, 0xFFFFFFFF},
	{EIF_GENERIC(egt_1_1000), 1, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 2, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 3, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 4, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 5, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 6, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 7, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 8, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 9, 0xFFFFFFFF},
	{EIF_GENERIC(egt_2_1000), 10, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 11, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 12, 0xFFFFFFFF},
	{EIF_GENERIC(egt_3_1000), 13, 0xFFFFFFFF},
	{EIF_GENERIC(egt_4_1000), 14, 0xFFFFFFFF},
	{EIF_GENERIC(egt_5_1000), 15, 0xFFFFFFFF},
	{EIF_GENERIC(egt_6_1000), 16, 0xFFFFFFFF},
	{EIF_GENERIC(egt_7_1000), 17, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 18, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 19, 0xFFFFFFFF},
	{EIF_GENERIC(egt_8_1000), 20, 0xFFFFFFFF},
	{EIF_GENERIC(egt_9_1000), 21, 0xFFFFFFFF},
	{EIF_GENERIC(egt_10_1000), 22, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 23, 0xFFFFFFFF},
	{EIF_GENERIC(egt_11_1000), 24, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 25, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 26, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 27, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x07CF /*999*/), 28, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01C7 /*227*/), 29, 0xFFFFFFFF},
	{EIF_GENERIC(egt_12_1000), 30, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13656, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13657, 0xFFFFFFFF},
	{EIF_GENERIC(egt_13_1000), 13658, 0xFFFFFFFF},
	{EIF_GENERIC(egt_14_1000), 13659, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13685, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13686, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13687, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13688, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13689, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13690, 0xFFFFFFFF},
	{EIF_GENERIC(egt_15_1000), 13691, 0xFFFFFFFF},
	{EIF_GENERIC(egt_16_1000), 13692, 0xFFFFFFFF},
	{EIF_GENERIC(egt_17_1000), 13693, 0xFFFFFFFF},
	{EIF_GENERIC(egt_18_1000), 13694, 0xFFFFFFFF},
	{EIF_GENERIC(egt_19_1000), 13695, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 13696, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 13697, 0xFFFFFFFF},
	{EIF_GENERIC(egt_20_1000), 13698, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13879, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13880, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13881, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 13884, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 13885, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 13886, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 13887, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13710, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 13890, 0xFFFFFFFF},
	{EIF_GENERIC(egt_21_1000), 6563, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13882, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13883, 4},
	{EIF_GENERIC(NULL), 13888, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 13889, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13891, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13892, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13893, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13894, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13895, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13896, 0xFFFFFFFF},
	{EIF_GENERIC(egt_22_1000), 13897, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 13898, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14466, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14467, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14468, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14469, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14470, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14471, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14472, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13660, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13661, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13662, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13663, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13664, 0xFFFFFFFF},
	{EIF_GENERIC(egt_23_1000), 13665, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13679, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13680, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13681, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x019D /*206*/), 13684, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 13671, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 13672, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 13673, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 13670, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 13669, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x019D /*206*/), 13682, 8},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13683, 0},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13666, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13667, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13668, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13674, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13675, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13676, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13677, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B5 /*218*/), 13678, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14433, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14434, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14435, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14516, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14517, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 14518, 0xFFFFFFFF},
};
void Init1000(void)
{
	IDSC(desc_1000, 0, 999);
	IDSC(desc_1000 + 1, 1, 999);
	IDSC(desc_1000 + 32, 408, 999);
	IDSC(desc_1000 + 36, 397, 999);
	IDSC(desc_1000 + 50, 403, 999);
	IDSC(desc_1000 + 58, 127, 999);
	IDSC(desc_1000 + 60, 390, 999);
	IDSC(desc_1000 + 72, 391, 999);
	IDSC(desc_1000 + 79, 406, 999);
	IDSC(desc_1000 + 85, 405, 999);
	IDSC(desc_1000 + 94, 393, 999);
	IDSC(desc_1000 + 104, 394, 999);
	IDSC(desc_1000 + 107, 401, 999);
}


#ifdef __cplusplus
}
#endif