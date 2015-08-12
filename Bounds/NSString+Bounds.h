//
//  NSString+Bounds.h
//  InEvent
//
//  Created by Pedro Góes on 31/05/15.
//  Copyright (c) 2015 Pedro G√≥es. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Bounds)

- (CGFloat)getProbableHeightWithFont:(UIFont *)font withSize:(CGSize)size;
- (CGFloat)getProbableWidthWithFont:(UIFont *)font withSize:(CGSize)size;

@end
