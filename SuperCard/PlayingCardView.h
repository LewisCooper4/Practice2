//
//  PlayingCradView.h
//  SuperCard
//
//  Created by Lewis Cooper on 2/17/14.
//  Copyright (c) 2014 Lewis Cooper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface PlayingCardView : UIView

extern const float CORNER_FONT_STANDARD_HEIGHT;
extern const float CORNER_RADIUS;


@property (nonatomic) NSUInteger rank;
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) BOOL faceUp;

- (void) setFaceUp:(BOOL)faceUp;
- (void) setRank:(NSUInteger)rank;
- (void) setSuit:(NSString *)suit;

@end
