// The user must define CLA_C in the project linker settings if using the
// CLA C compiler
// Project Properties -> C2000 Linker -> Advanced Options -> Command File
// Preprocessing -> --define
#ifdef CLA_C
// Define a size for the CLA scratchpad area that will be used
// by the CLA compiler for local symbols and temps
// Also force references to the special symbols that mark the
// scratchpad are.
CLA_SCRATCHPAD_SIZE = 0x100;
--undef_sym=__cla_scratchpad_end
--undef_sym=__cla_scratchpad_start
#endif //CLA_C

MEMORY
{
PAGE 0 :
   /* BEGIN is used for the "boot to SARAM" bootloader mode   */

   BEGIN           	: origin = 0x000000, length = 0x000002
   RAMM0           	: origin = 0x000122, length = 0x0002DE
   RAMD0           	: origin = 0x00B000, length = 0x000800
   RAMGS0123	      : origin = 0x00C000, length = 0x004000

   RAMLS012_CLA_PRG_RAM  : origin = 0x008000, length = 0x001800
   // RAMLS0          	   : origin = 0x008000, length = 0x000800
   // RAMLS1          	   : origin = 0x008800, length = 0x000800
   // RAMLS2      		   : origin = 0x009000, length = 0x000800
   // RAMLS3      		   : origin = 0x009800, length = 0x000800
   RAMLS4      		   : origin = 0x00A000, length = 0x000800
   RESET           	   : origin = 0x3FFFC0, length = 0x000002

PAGE 1 :

   BOOT_RSVD       : origin = 0x000002, length = 0x000120     /* Part of M0, BOOT rom will use this for stack */
   RAMM1           : origin = 0x000400, length = 0x000400     /* on-chip RAM block M1 */
   RAMD1           : origin = 0x00B800, length = 0x000800

   //RAMLS5      : origin = 0x00A800, length = 0x000800

   RAMLS345_CLA_DAT_RAM  : origin = 0x009800, length = 0x001800

   //RAMGS01      : origin = 0x00C000, length = 0x002000
   //RAMGS1      : origin = 0x00D000, length = 0x001000
   //RAMGS2      : origin = 0x00E000, length = 0x001000
   //RAMGS3      : origin = 0x00F000, length = 0x001000
   RAMGS4      : origin = 0x010000, length = 0x001000
   RAMGS5      : origin = 0x011000, length = 0x001000
   RAMGS6      : origin = 0x012000, length = 0x001000
   RAMGS7      : origin = 0x013000, length = 0x001000
   RAMGS8      : origin = 0x014000, length = 0x001000
   RAMGS9      : origin = 0x015000, length = 0x001000
   RAMGS10     : origin = 0x016000, length = 0x001000
   RAMGS11     : origin = 0x017000, length = 0x001000
   RAMGS12     : origin = 0x018000, length = 0x001000
   M1_PARAMS_ADDRESS_RAMGS13   : origin = 0x019000, length = 0x00027A
   PI_IQ_ADDRESS_RAMGS13   : origin = 0x019280, length = 0x000012     
   M1_OPERATION_MODE_RAMGS13   : origin = 0x019292, length = 0x000001
   M1_SPEEDREF_RAMGS13   : origin = 0x019294, length = 0x000002
   M1_FSWDECIDED_RAMGS13   : origin = 0x019296, length = 0x000002
   RAMGS13     : origin = 0x019298, length = 0x000D68
   //PI_IQ_ADDRESS_RAMGS13   : origin = 0x019000, length = 0x000012     
   //M1_OPERATION_MODE_RAMGS13   : origin = 0x019012, length = 0x000001
   //M1_SPEEDREF_RAMGS13   : origin = 0x019014, length = 0x000002
   //M1_PARAMS_ADDRESS_RAMGS13   : origin = 0x019016, length = 0x00027A
   //RAMGS13     : origin = 0x019290, length = 0x000D70
   M2_PARAMS_ADDRESS_RAMGS14 : origin = 0x01A000, length = 0x00027A  
   M2_FSWDECIDED_RAMGS14   : origin = 0x01A27A, length = 0x000002
   M2_OPERATION_MODE_RAMGS14 : origin = 0x01A27C, length = 0x000001
   RAMGS14     : origin = 0x01A27D, length = 0x000D83
   RAMGS15           : origin = 0x01B000, length = 0x001000    /* Only Available on F28379D, F28377D, F28375D devices. Remove line on other devices. */

   //RAMGS13     : origin = 0x019000, length = 0x001000        /*CPU1 is the owner of RAMGS13*/
   //RAMGS14     : origin = 0x01A000, length = 0x001000        /*CPU2 is the owner of RAMGS14*/  

   CPU2TOCPU1RAM   : origin = 0x03F800, length = 0x000400
   CPU1TOCPU2RAM   : origin = 0x03FC00, length = 0x000400

   CANA_MSG_RAM     : origin = 0x049000, length = 0x000800
   CANB_MSG_RAM     : origin = 0x04B000, length = 0x000800

   CLA1_MSGRAMLOW   : origin = 0x001480, length = 0x000080
   CLA1_MSGRAMHIGH  : origin = 0x001500, length = 0x000080
}


SECTIONS
{
   codestart        : > BEGIN,     PAGE = 0
   .text            : >> RAMGS0123 ,   PAGE = 0
   .cinit           : > RAMM0,     PAGE = 0
   .pinit           : > RAMM0,     PAGE = 0
   .switch          : > RAMM0,     PAGE = 0
   .reset           : > RESET,     PAGE = 0, TYPE = DSECT /* not used, */

   .stack           : > RAMM1,     PAGE = 1
   .ebss            : > RAMGS4,    PAGE = 1
   .econst          : > RAMD1,    PAGE = 1
   .esysmem         : > RAMD1,    PAGE = 1
   //Filter_RegsFile  : > RAMGS4,	   PAGE = 1

   //ramgs0           : > RAMGS0,    PAGE = 1
   //ramgs1           : > RAMGS1,    PAGE = 1

   Cla1Prog         : > RAMLS012_CLA_PRG_RAM, PAGE=0

   CLAData		      : > RAMLS345_CLA_DAT_RAM, PAGE=1
   CLA1mathTables    : > RAMLS345_CLA_DAT_RAM, PAGE = 1

   PI_IQ_LOCATION   : > PI_IQ_ADDRESS_RAMGS13, PAGE = 1
   M1_OPERATION_MODE_LOCATION : > M1_OPERATION_MODE_RAMGS13, PAGE = 1
   M1_SPEEDREF_LOCATION : > M1_SPEEDREF_RAMGS13, PAGE = 1
   M1_PARAMS_ADDRESS_LOCATION : > M1_PARAMS_ADDRESS_RAMGS13, PAGE = 1
   M2_PARAMS_ADDRESS_LOCATION : > M2_PARAMS_ADDRESS_RAMGS14, PAGE = 1
   M2_OPERATION_MODE_LOCATION : > M2_OPERATION_MODE_RAMGS14, PAGE = 1
   M1_FSWDECIDED_LOCATION : > M1_FSWDECIDED_RAMGS13, PAGE = 1
   M2_FSWDECIDED_LOCATION : > M2_FSWDECIDED_RAMGS14, PAGE = 1


#ifdef __TI_COMPILER_VERSION__
   #if __TI_COMPILER_VERSION__ >= 15009000
    .TI.ramfunc : {} > RAMM0,      PAGE = 0
   #else
    ramfuncs    : > RAMM0      PAGE = 0   
   #endif
#endif

#ifdef CLA_C
   /* CLA C compiler sections */
   //
   // Must be allocated to memory the CLA has write access to
   //
   CLAscratch       :
                     { *.obj(CLAscratch)
                     . += CLA_SCRATCHPAD_SIZE;
                     *.obj(CLAscratch_end) } >  RAMLS345_CLA_DAT_RAM,  PAGE = 1

   .scratchpad      : > RAMLS345_CLA_DAT_RAM,       PAGE = 1
   .bss_cla		    : > RAMLS345_CLA_DAT_RAM,       PAGE = 1
   .const_cla	    : > RAMLS345_CLA_DAT_RAM,       PAGE = 1
#endif //CLA_C

   /* The following section definitions are required when using the IPC API Drivers */
    GROUP : > CPU1TOCPU2RAM, PAGE = 1
    {
        PUTBUFFER
        PUTWRITEIDX
        GETREADIDX
    }

    GROUP : > CPU2TOCPU1RAM, PAGE = 1
    {
        GETBUFFER :    TYPE = DSECT
        GETWRITEIDX :  TYPE = DSECT
        PUTREADIDX :   TYPE = DSECT
    }

    /* The following section definition are for SDFM examples */
    /*
   Filter1_RegsFile : > RAMGS1,	PAGE = 1, fill=0x1111
   Filter2_RegsFile : > RAMGS2,	PAGE = 1, fill=0x2222
   Filter3_RegsFile : > RAMGS3,	PAGE = 1, fill=0x3333
   Filter4_RegsFile : > RAMGS4,	PAGE = 1, fill=0x4444
   Difference_RegsFile : >RAMGS5, 	PAGE = 1, fill=0x3333
   */
}

/*
//===========================================================================
// End of file.
//===========================================================================
*/
