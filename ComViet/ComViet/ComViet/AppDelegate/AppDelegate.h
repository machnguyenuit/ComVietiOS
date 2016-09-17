//
//  AppDelegate.h
//  Cơm
//
//  Created by NguyenMach-MAC on 9/13/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseNV.h"
#import "MainVC.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, strong) BaseNV *rootNV;
@property (nonatomic, strong) MainVC *mainVC;

@property (nonatomic, strong) NSString *stA;


@end

