//
//  NSAttributedString+Bounds.h
//  InEvent
//
//  Created by Pedro Góes on 01/06/15.
//  Copyright (c) 2015 Pedro G√≥es. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSAttributedString (Bounds)

- (CGFloat)getProbableHeightWithSize:(CGSize)size;
- (CGFloat)getProbableWidthWithSize:(CGSize)size;

@end
