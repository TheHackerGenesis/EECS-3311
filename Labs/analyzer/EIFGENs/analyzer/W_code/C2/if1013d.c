/*
 * Class IFF
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static const EIF_TYPE_INDEX egt_0_1013 [] = {0xFF01,232,0xFFFF};
static const EIF_TYPE_INDEX egt_1_1013 [] = {0xFF01,245,1012,0xFFFF};
static const EIF_TYPE_INDEX egt_2_1013 [] = {0xFF01,1012,0xFFFF};
static const EIF_TYPE_INDEX egt_3_1013 [] = {0,0xFFFF};
static const EIF_TYPE_INDEX egt_4_1013 [] = {0,0xFFFF};
static const EIF_TYPE_INDEX egt_5_1013 [] = {0xFF01,1012,0xFFFF};
static const EIF_TYPE_INDEX egt_6_1013 [] = {0xFF01,1012,0xFFFF};
static const EIF_TYPE_INDEX egt_7_1013 [] = {0,0xFFFF};
static const EIF_TYPE_INDEX egt_8_1013 [] = {0xFF01,16,0xFFFF};
static const EIF_TYPE_INDEX egt_9_1013 [] = {0xFF01,232,0xFFFF};
static const EIF_TYPE_INDEX egt_10_1013 [] = {0xFF01,232,0xFFFF};
static const EIF_TYPE_INDEX egt_11_1013 [] = {0xFF01,17,0xFFFF};
static const EIF_TYPE_INDEX egt_12_1013 [] = {0xFF01,1012,0xFFFF};
static const EIF_TYPE_INDEX egt_13_1013 [] = {0xFF01,903,0xFF01,1007,0xFFFF};
static const EIF_TYPE_INDEX egt_14_1013 [] = {0xFF01,1007,0xFFFF};
static const EIF_TYPE_INDEX egt_15_1013 [] = {0xFF01,1007,0xFFFF};
static const EIF_TYPE_INDEX egt_16_1013 [] = {0xFF01,1007,0xFFFF};


static const struct desc_info desc_1013[] = {
	{EIF_GENERIC(NULL), 0xFFFFFFFF, 0xFFFFFFFF},
	{EIF_GENERIC(egt_0_1013), 0, 0xFFFFFFFF},
	{EIF_GENERIC(egt_1_1013), 1, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 2, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 3, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 4, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 5, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 6, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 7, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 8, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0197 /*203*/), 9, 0xFFFFFFFF},
	{EIF_GENERIC(egt_2_1013), 10, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 11, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 12, 0xFFFFFFFF},
	{EIF_GENERIC(egt_3_1013), 13, 0xFFFFFFFF},
	{EIF_GENERIC(egt_4_1013), 14, 0xFFFFFFFF},
	{EIF_GENERIC(egt_5_1013), 15, 0xFFFFFFFF},
	{EIF_GENERIC(egt_6_1013), 16, 0xFFFFFFFF},
	{EIF_GENERIC(egt_7_1013), 17, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 18, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 19, 0xFFFFFFFF},
	{EIF_GENERIC(egt_8_1013), 20, 0xFFFFFFFF},
	{EIF_GENERIC(egt_9_1013), 21, 0xFFFFFFFF},
	{EIF_GENERIC(egt_10_1013), 22, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 23, 0xFFFFFFFF},
	{EIF_GENERIC(egt_11_1013), 24, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 25, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 26, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 27, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x07E9 /*1012*/), 28, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01C7 /*227*/), 29, 0xFFFFFFFF},
	{EIF_GENERIC(egt_12_1013), 30, 0xFFFFFFFF},
	{EIF_GENERIC(egt_13_1013), 13910, 0},
	{EIF_GENERIC(NULL), 13911, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 13912, 0xFFFFFFFF},
	{EIF_GENERIC(egt_14_1013), 0x00, 0xFFFFFFFF},
	{EIF_GENERIC(egt_15_1013), 13941, 0xFFFFFFFF},
	{EIF_GENERIC(egt_16_1013), 13942, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 13943, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 13944, 0xFFFFFFFF},
};
void Init1013(void)
{
	IDSC(desc_1013, 0, 1012);
	IDSC(desc_1013 + 1, 1, 1012);
	IDSC(desc_1013 + 32, 410, 1012);
	IDSC(desc_1013 + 36, 390, 1012);
	IDSC(desc_1013 + 39, 401, 1012);
}


#ifdef __cplusplus
}
#endif