//
//  PlayingCradView.m
//  SuperCard
//
//  Created by Lewis Cooper on 2/17/14.
//  Copyright (c) 2014 Lewis Cooper. All rights reserved.
//

#import "PlayingCardView.h"
#import "SuperCardViewController.h"

@implementation PlayingCardView

const float CORNER_RADIUS = 12.0;
const float CORNER_FONT_STANDARD_HEIGHT = 180.0;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}


- (void) awakeFromNib
{
    [self setup];
}


- (void) drawRect:(CGRect)rect
{
    UIBezierPath *roundedRect = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:[self cornerRadius]];
    [roundedRect addClip];
    
    [[UIColor whiteColor] setFill];
    
    UIRectFill(self.bounds);
    
    [[UIColor blackColor] setStroke];
    [roundedRect stroke];
    
    [self drawCorners];
}

- (void) drawCorners
{
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setAlignment:NSTextAlignmentCenter];
    
    UIFont *cornerFont = [[UIFont alloc] init];
    
}


- (void) setup
{
    [self setBackgroundColor:nil];
    [self setOpaque:NO];
    [self setContentMode:UIViewContentModeRedraw];
    
}


- (CGFloat) cornerScaleFactor
{
    CGFloat cgFloat;
    cgFloat = self.bounds.size.height / CORNER_FONT_STANDARD_HEIGHT;
    
    return cgFloat;
}

- (CGFloat) cornerRadius
{
    CGFloat cgFloat;
    cgFloat = [self cornerScaleFactor] * CORNER_RADIUS;
    
    return cgFloat;
}

- (CGFloat) cornerOffset
{
    return 3 * [self cornerRadius];
}


- (void) setFaceUp:(BOOL)faceUp
{
    self.faceUp = faceUp;
    [self setNeedsDisplay];
}

- (void) setRank:(NSUInteger)rank
{
    self.rank = rank;
    [self setNeedsDisplay];
}

- (void) setSuit:(NSString *)suit
{
    self.suit = suit;
    [self setNeedsDisplay];
}


@end
