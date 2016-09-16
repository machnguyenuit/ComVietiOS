//
//  define.h
//  Cơm Việt
//
//  Created by NguyenMach-MAC on 9/15/16.
//  Copyright © 2016 admin. All rights reserved.
//

#ifndef define_h
#define define_h


// Application Delegate
#define AppShare [UIApplication sharedApplication]
#define App ((AppDelegate*)AppShare.delegate)

//get Min, Max
#define MAX(A,B) __NSMAX_IMPL__(A,B,__COUNTER__)
#define MIN(A,B) __NSMIN_IMPL__(A,B,__COUNTER__)

// chuyen man hinh
#define VCNameFromSB(VC, VCName, SB) (VC*)[[UIStoryboard storyboardWithName:SB bundle:nil] instantiateViewControllerWithIdentifier:VCName]
#define VCFromSB(VC, SB) (VC*)[[UIStoryboard storyboardWithName:SB bundle:nil] instantiateViewControllerWithIdentifier:NSStringFromClass([VC class])]

//coler
#define RGBA(ColorLongValue, AlphaValue) [UIColor colorWithRed:((ColorLongValue>>16)&0xFF)/255.0 green:((ColorLongValue>>8)&0xFF)/255.0 blue:(ColorLongValue&0xFF)/255.0 alpha:AlphaValue]
#define RGB(ColorLongValue) RGBA(ColorLongValue, 1.0)

//Storyboard
static NSString *const StoryboardMain       = @"Main";
static NSString *const StoryboardMenu       = @"Menu";
static NSString *const StoryboardSearch     = @"Search";
static NSString *const StoryboardResult     = @"Result";
static NSString *const StoryboardLogin      = @"Login";
static NSString *const StoryboardIntroduce   = @"Introduce";

#endif /* define_h */
