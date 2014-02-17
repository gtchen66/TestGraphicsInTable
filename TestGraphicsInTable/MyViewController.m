//
//  MyViewController.m
//  TestGraphicsInTable
//
//  Created by George Chen on 2/15/14.
//  Copyright (c) 2014 George Chen. All rights reserved.
//

#import "MyViewController.h"
#import "MyTableViewCell.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
- (IBAction)onMyButton:(id)sender;

@property (nonatomic, strong) NSMutableArray *myArray;

@end

@implementation MyViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
//        self.myTableView.delegate = self;
//        self.myTableView.dataSource = self;
        self.myArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    NSLog(@"MyViewController : viewDidLoad");
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UINib *customNib = [UINib nibWithNibName:@"MyTableViewCell" bundle:nil];
    [self.myTableView registerNib:customNib forCellReuseIdentifier:@"MyCell"];
    
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;

    [self.myArray addObject:@"hello"];
    [self.myArray addObject:@"world"];
    [self.myArray addObjectsFromArray:[NSArray arrayWithObjects:@"this", @"is", @"another", @"way", @"to", @"get", @"a", @"bunch", @"of", @"entries", nil]];
    
    [self.myTableView reloadData];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Table Delegates

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"MyViewController : numberOfRowsInSection is %d",self.myArray.count);
    return self.myArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    cell.myCellLabel.text = [NSString stringWithFormat:@"cell for row %d",indexPath.row];
    cell.value = indexPath.row;
    
    NSLog(@"got cell for row %d",indexPath.row);
    [cell redisplay];
    return cell;
    
}

- (IBAction)onMyButton:(id)sender {
    NSLog(@"Exiting");
    exit;
}
@end
