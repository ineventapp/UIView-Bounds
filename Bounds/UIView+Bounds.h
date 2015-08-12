//
//  UIView+Bounds.h
//  InEvent
//
//  Created by Pedro Góes on 31/05/15.
//  Copyright (c) 2015 Pedro G√≥es. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ETFlowView;

@interface UIView (Bounds)

// Text
- (void)resizeAndSetText:(NSString *)text;
- (void)resizeAndSetText:(NSString *)text forMasterView:(ETFlowView *)masterView;
- (void)resizeAndSetText:(NSString *)text forMasterView:(ETFlowView *)masterView withMinimumHeight:(CGFloat)mininumHeight;
- (CGFloat)getProbableHeightForText:(NSString *)text;
- (CGFloat)getProbableHeightForText:(NSString *)text withMinimumHeight:(CGFloat)mininumHeight;

// Attributed Text
- (void)resizeAndSetAttributedText:(NSAttributedString *)text;
- (void)resizeAndSetAttributedText:(NSAttributedString *)text forMasterView:(ETFlowView *)masterView;
- (void)resizeAndSetAttributedText:(NSAttributedString *)text forMasterView:(ETFlowView *)masterView withMinimumHeight:(CGFloat)mininumHeight;
- (CGFloat)getProbableHeightForAttributedText:(NSAttributedString *)text;
- (CGFloat)getProbableHeightForAttributedText:(NSAttributedString *)text withMinimumHeight:(CGFloat)mininumHeight;

@end
