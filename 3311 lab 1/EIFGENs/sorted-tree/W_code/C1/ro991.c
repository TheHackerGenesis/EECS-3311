/*
 * Code for class ROOT
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern void F991_7716(EIF_REFERENCE);
extern void EIF_Minit991(void);

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {ROOT}.make */
void F991_7716 (EIF_REFERENCE Current)
{
	GTCX
	char *l_feature_name = "make";
	RTEX;
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	RTCDT;
	RTSN;
	RTDA;
	RTLD;
	
	RTLI(3);
	RTLR(0,tr1);
	RTLR(1,ur1);
	RTLR(2,Current);
	RTLIU(3);
	RTLU (SK_VOID, NULL);
	RTLU (SK_REF, &Current);
	
	RTEAA(l_feature_name, 990, Current, 0, 0, 14054);
	RTSA(dtype);
	RTSC;
	RTME(dtype, 0);
	RTGC;
	RTDBGEAA(990, Current, 14054);
	RTIV(Current, RTAL);
	RTHOOK(1);
	tr1 = RTLN(eif_new_type(971, 0x01).id);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(5138, Dtype(tr1)))(tr1);
	RTNHOOK(1,1);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(5075, dtype))(Current, ur1x);
	RTHOOK(2);
	tr1 = RTLN(eif_new_type(970, 0x01).id);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(5111, Dtype(tr1)))(tr1);
	RTNHOOK(2,1);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(5075, dtype))(Current, ur1x);
	RTHOOK(3);
	tr1 = RTLN(eif_new_type(969, 0x01).id);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(5109, Dtype(tr1)))(tr1);
	RTNHOOK(3,1);
	ur1 = RTCCL(tr1);
	(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWF(5075, dtype))(Current, ur1x);
	RTHOOK(4);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(5058, dtype))(Current);
	RTHOOK(5);
	(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWF(5056, dtype))(Current);
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(6);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(2);
	RTEE;
#undef ur1
}

void EIF_Minit991 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
