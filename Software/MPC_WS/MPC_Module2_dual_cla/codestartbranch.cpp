/*
 * codestartbranch.cpp
 *
 *  Created on: 15 Mar 2021
 *      Author: hakan
 */
#include <F2837xD_Device.h>
#include <F2837xD_Examples.h>

extern void *_c_int00;
#pragma CODE_SECTION("codestart")
void codestart(void)
{

    while(1)
    {
        if(IpcRegs.IPCSTS.bit.IPC31==1)
        {
            break;
        }
    }
    ((void(*)())_c_int00)();

}

