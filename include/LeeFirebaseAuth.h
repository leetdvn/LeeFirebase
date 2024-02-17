#pragma once
#ifndef __LEEFIREBASE_H__
#define __LEEFIREBASE_H__

#include <firebase/auth.h>
#include <Defination.h>

using namespace firebase;


namespace LeeAuth{

    LEE_API void GetUID(){
        firebase::auth::FacebookAuthProvider::GetCredential("");
    }
}
#endif