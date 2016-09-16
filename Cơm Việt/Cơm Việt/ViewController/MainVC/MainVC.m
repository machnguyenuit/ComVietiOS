//
//  MainVC.m
//  Cơm
//
//  Created by NguyenMach-MAC on 9/13/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import "Appdelegate.h"
#import "MainVC.h"

@interface MainVC (){
    
    BOOL _hasHint;
    
    UILongPressGestureRecognizer *_dragGesture;
    CGFloat _originDragX;
    CGFloat _originLeftX;
}

@end

@implementation MainVC

- (void)viewDidLoad {
    [super viewDidLoad];
 
                    _menuVC = self.childViewControllers[1];
                    _contentNV = self.childViewControllers[0];
    
                    _vMask.hidden = YES;
                    [self showLeftPanel:NO withAnimation:NO];
                    
                    _dragGesture = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(onDragEvent:)];
                    _dragGesture.numberOfTouchesRequired = 1;
                    _dragGesture.minimumPressDuration = 0.08;
                 
                    [App.window addGestureRecognizer:_dragGesture];
    
            
    
}

#pragma mark -Event Gesture
- (void) onDragEvent:(UIGestureRecognizer*) gesture{

                    NSInteger state = gesture.state;
                    CGPoint p = [gesture locationInView:gesture.view]; //get origin x,y when long press gesture
                    CGFloat width = _vLeftPanel.frame.size.width;
    
    if (state == UIGestureRecognizerStateBegan) {
                    _originDragX = p.x;
                    _originLeftX = _conLeftPanel.constant;
        
    }else if (state == UIGestureRecognizerStateChanged){
                    CGFloat delta = p.x - _originDragX;
                    CGFloat newOriginLeftX = _originLeftX + delta;
                
                    newOriginLeftX = MAX(-width, MIN(0, newOriginLeftX));
                
                    _conLeftPanel.constant = newOriginLeftX;
                    [self.view layoutIfNeeded];
        
    }else if (state == UIGestureRecognizerStateEnded ||
                  state == UIGestureRecognizerStateFailed ||
                  state == UIGestureRecognizerStateCancelled){
        
                  BOOL needShowing = (_conLeftPanel.constant > -width/2.0);
                  [self showLeftPanel:needShowing];
        
    }
    
//            NSLog(@"%d",gesture.state);
//            NSLog(@"%@", NSStringFromCGPoint(p));

}

#pragma mark - Show/Hint leftPanel
- (void)showLeftPanel:(BOOL)isShow{

                [self showLeftPanel:isShow withAnimation:YES];
    
}


- (void) showLeftPanel:(BOOL)isShow withAnimation:(BOOL) isAnimation{
    
                _conLeftPanel.constant = isShow ? 0 :-_vLeftPanel.frame.size.width;
 
    if (!isAnimation) {
                [self.view layoutIfNeeded];
                _vMask.hidden = !isShow;
                return;
    }
                _vMain.userInteractionEnabled = NO;
    
                [UIView animateWithDuration:0.88 animations:^{
                [self.view layoutIfNeeded];
        
    } completion:^(BOOL finished) {
                _vMain.userInteractionEnabled = YES;
                _vMask.hidden = !isShow;
    
    }];
    _hasHint = !isShow;
}

#pragma mark -Action
-(IBAction)onShowHintLeftPanel:(id)sender{
    
    if (_hasHint == YES) {
                [self showLeftPanel:YES];
                _hasHint = NO;
        
    }else{
                [self showLeftPanel:NO];
                _hasHint = YES;
        
    }
    
}

@end
