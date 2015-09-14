//
//  UIView+Bounds.m
//  InEvent
//
//  Created by Pedro Góes on 31/05/15.
//  Copyright (c) 2015 Pedro G√≥es. All rights reserved.
//

#import "UIView+Bounds.h"
#import "ETFlowView.h"
#import "NSString+Bounds.h"
#import "NSAttributedString+Bounds.h"

@implementation UIView (Bounds)

/*
 
 Text
 
 */

- (void)resizeAndSetText:(NSString *)text {
    [self resizeAndSetText:text forMasterView:nil];
}

- (void)resizeAndSetText:(NSString *)text forMasterView:(ETFlowView *)masterView {
    [self resizeAndSetText:text forMasterView:masterView withMinimumHeight:0.0f];
}

- (void)resizeAndSetText:(NSString *)text forMasterView:(ETFlowView *)masterView withMinimumHeight:(CGFloat)mininumHeight {
    [self setText:text forMasterView:masterView withMinimumHeight:mininumHeight andResize:YES];
}

- (CGFloat)getProbableHeightForText:(NSString *)text {
    return [self setText:text forMasterView:nil withMinimumHeight:0.0f andResize:NO];
}

- (CGFloat)getProbableHeightForText:(NSString *)text withMinimumHeight:(CGFloat)mininumHeight {
    return [self setText:text forMasterView:nil withMinimumHeight:mininumHeight andResize:NO];
}

- (CGFloat)setText:(NSString *)text forMasterView:(ETFlowView *)masterView withMinimumHeight:(CGFloat)mininumHeight andResize:(BOOL)resize {

    // Set our text for our text class
    if ([self respondsToSelector:@selector(setTitle:forState:)]) {
        [(UIButton *)self setTitle:text forState:UIControlStateNormal];
        
    } else if ([self respondsToSelector:@selector(text)]) {
        [(UILabel *)self setText:text];
    }
    
    // Get our text class font
    UIFont *font;
    if ([self respondsToSelector:@selector(setTitle:forState:)]) {
        font = [[(UIButton *)self titleLabel] font];
        
    } else if ([self respondsToSelector:@selector(text)]) {
        font = [(UILabel *)self font];
    }
    
    // Calculate final height
    CGFloat height = [text getProbableHeightWithFont:font forHorizontalConstrain:self.frame.size.width];
    
    // Since it's a textView, we should add an extra padding
    if ([self isKindOfClass:[UITextView class]]) {
        height += 8.0f;
    }
    
    // Update frame and contentSize
    if (resize) {
        CGRect frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, ((height <= 5.0f || height > mininumHeight) ? height : mininumHeight));
        (masterView) ? [masterView updateView:self toFrame:frame] : [self setFrame:frame];
    }
    
    return height;
}

/*
 
 Attributed Text
 
 */

- (void)resizeAndSetAttributedText:(NSAttributedString *)text {
    [self resizeAndSetAttributedText:text forMasterView:nil];
}

- (void)resizeAndSetAttributedText:(NSAttributedString *)text forMasterView:(ETFlowView *)masterView {
    [self resizeAndSetAttributedText:text forMasterView:masterView withMinimumHeight:0.0f];
}

- (void)resizeAndSetAttributedText:(NSAttributedString *)text forMasterView:(ETFlowView *)masterView withMinimumHeight:(CGFloat)mininumHeight {
    [self setAttributedText:text forMasterView:masterView withMinimumHeight:mininumHeight andResize:YES];
}

- (CGFloat)getProbableHeightForAttributedText:(NSAttributedString *)text {
    return [self setAttributedText:text forMasterView:nil withMinimumHeight:0.0f andResize:NO];
}

- (CGFloat)getProbableHeightForAttributedText:(NSAttributedString *)text withMinimumHeight:(CGFloat)mininumHeight {
    return [self setAttributedText:text forMasterView:nil withMinimumHeight:mininumHeight andResize:NO];
}

- (CGFloat)setAttributedText:(NSAttributedString *)text forMasterView:(ETFlowView *)masterView withMinimumHeight:(CGFloat)mininumHeight andResize:(BOOL)resize {
    
    // Set our text for our text class
    if ([self respondsToSelector:@selector(setAttributedTitle:forState:)]) {
        [(UIButton *)self setAttributedTitle:text forState:UIControlStateNormal];
        
    } else if ([self respondsToSelector:@selector(attributedText)]) {
        [(UILabel *)self setAttributedText:text];
    }
    
    // Calculate final height
    CGFloat height = [text getProbableHeightForHorizontalConstrain:self.frame.size.width];
    
    // Since it's a textView, we should add an extra padding
    if ([self isKindOfClass:[UITextView class]]) {
        height += 8.0f;
    }
    
    // Update frame and contentSize
    if (resize) {
        CGRect frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, ((height <= 5.0f || height > mininumHeight) ? height : mininumHeight));
        (masterView) ? [masterView updateView:self toFrame:frame] : [self setFrame:frame];
    }
    
    return height;
}

@end
