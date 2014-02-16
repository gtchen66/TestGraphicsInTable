//
//  MyTableViewCell.h
//  TestGraphicsInTable
//
//  Created by George Chen on 2/15/14.
//  Copyright (c) 2014 George Chen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *myCellLabel;
@property (nonatomic, assign) int value;

@end
