#pragma once
#ifndef __DEFINATION_H__
#define __DEFINATION_H__


#ifdef LEETDVN
    #define DLLIMPORT   __declspec( dllimport )
#else
    #define LEE_API   __declspec( dllexport )
#endif

#endif