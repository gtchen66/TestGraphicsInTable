//
//  MyTableViewCell.m
//  TestGraphicsInTable
//
//  Created by George Chen on 2/15/14.
//  Copyright (c) 2014 George Chen. All rights reserved.
//

#import "MyTableViewCell.h"

//@interface MyGraphic : UIView
//@property (nonatomic, assign) int number;
//@end
//@implementation MyGraphic
//
//- (id)initWithFrame:(CGRect)frame {
//    self = [super initWithFrame:frame];
//    NSLog(@"MyTableViewCell : MyGraphic : initWithFrame");
//    if (self) {
//        [self setBackgroundColor:[UIColor clearColor]];
//    }
//    return self;
//}
//
//- (void)drawRect:(CGRect)rect {
////    float width = self.frame.size.width;
//    float height = self.frame.size.height;
//    float leftX = 1.0;
//    float rightX = 3*self.number;
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    
//    CGFloat blue[4] = {0.0f, 0.0f, 1.0f, 1.0f};
//    CGContextSetStrokeColor(context, blue);
//    CGContextBeginPath(context);
//    CGContextMoveToPoint(context, leftX, 0.25*height);
//    CGContextAddLineToPoint(context, rightX, 0.25*height);
//    CGContextAddLineToPoint(context, rightX, 0.75*height);
//    CGContextAddLineToPoint(context, leftX, 0.75*height);
//    CGContextAddLineToPoint(context, leftX, 0.25*height);
//    //    CGContextFillPath(context);
//    CGContextStrokePath(context);
//    NSLog(@"MyTableViewCell : MyGraphic : drawRect - from %.0f to %.0f",leftX,rightX);
//
//}
//
//-(void)setNumber:(int)number {
//    _number = number;
//    // push this number down.
//    
////    [self setNeedsDisplay];
//}
//
//@end

@implementation MyTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    NSLog(@"*******************************");
    NSLog(@"MyTableViewCell : initWithStyle");
    NSLog(@"*******************************");
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    NSLog(@"MyTableViewCell : setSelected, value currently %d",self.value);
    [super setSelected:selected animated:animated];

//    float width = self.frame.size.width;
//    float height = self.frame.size.height;

    // Configure the view for the selected state
    // add the graphics view
//    MyGraphic *blockView = [[MyGraphic alloc] initWithFrame:CGRectMake(0, 0, width/2.0, height)];
//    blockView.number = self.value;
//    [self addSubview:blockView];
}

- (void) viewDidLoad
{
    NSLog(@"viewDidLoad executed");
}

- (void)setValue:(int)value {
    _value = value;
    // pass this to the drawing view.
    self.myDrawingView.drawingValue = value;
    [self setNeedsDisplay];
}

- (void) redisplay {
    [self.myDrawingView setNeedsDisplay];
}

@end
