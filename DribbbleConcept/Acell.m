//
//  Acell.m
//  DribbbleConcept
//
//  Created by Hubert Kunnemeyer on 10/24/13.
//  Copyright (c) 2013 Hubert Kunnemeyer. All rights reserved.
//

#import "Acell.h"
#import <QuartzCore/QuartzCore.h>

@implementation Acell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setUpCell];
    }
    return self;
}
- (id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (!self) {
        return nil;
    }
    
    [self setUpCell];
    
    return self;
}
- (void)setUpCell{
    self.layer.borderColor = [[UIColor lightGrayColor] CGColor];
    self.layer.borderWidth = 2.0f;
    self.layer.cornerRadius = 4.0f;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
