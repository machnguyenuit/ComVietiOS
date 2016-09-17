//
//  MainVC.h
//  Cơm
//
//  Created by NguyenMach-MAC on 9/13/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseNV.h"
#import "MenuVC.h"
#import "IntroduceVC.h"

@interface MainVC : UIViewController

@property (nonatomic, weak ) IBOutlet UIView *vLeftPanel;
@property (nonatomic, weak ) IBOutlet UIView *vMain;
@property (nonatomic, weak) IBOutlet UIView *vMask;

@property (nonatomic, strong) BaseNV* mainNV;

@property (nonatomic, strong) MenuVC *menuVC;
@property (nonatomic, strong) IntroduceVC *introduceVC;

@property (nonatomic, strong) BaseNV *contentNV;

@property (nonatomic, weak) IBOutlet NSLayoutConstraint *conLeftPanel;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint *conLeftMain;

- (void) showLeftPanel: (BOOL) isShow;


@end

