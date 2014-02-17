//
//  MyDrawingView.m
//  TestGraphicsInTable
//
//  Created by George Chen on 2/16/14.
//  Copyright (c) 2014 George Chen. All rights reserved.
//

#import "MyDrawingView.h"

@implementation MyDrawingView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor greenColor]];
        // Initialization code
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    NSLog(@"MyDrawingView : initWithCoder");
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    float height = self.frame.size.height;
    float leftX = 1.0;
    float rightX = 4*self.drawingValue;
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGFloat purple[4] = {1.0f, 0.0f, 1.0f, 1.0f};
    CGContextSetStrokeColor(context, purple);
    CGContextSetFillColor(context, purple);
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, leftX, 0.35*height);
    CGContextAddLineToPoint(context, rightX, 0.35*height);
    
    //CGContextAddLineToPoint(context, rightX, 0.65*height);
    CGContextAddArc(context, rightX, 0.5*height, 0.15*height, -(M_PI_2), M_PI_2, 0);
    
    CGContextAddLineToPoint(context, leftX, 0.65*height);
    CGContextAddLineToPoint(context, leftX, 0.35*height);
    // CGContextFillPath(context);
    CGContextStrokePath(context);
    NSLog(@"MyDrawingView : drawRect - from %.0f to %.0f",leftX,rightX);
}


@end
