//
//  ListViewController.m
//  fyberChallenge
//
//  Created by Antonio_Stilo on 22/09/15.
//  Copyright (c) 2015 Antonio_Stilo. All rights reserved.
//

#import "ListViewController.h"
#import "Global.h"
#import "ListTableViewCell.h"

@interface ListViewController ()

@property (nonatomic, retain) UITableView *tableView;

@end

@implementation ListViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"OFFERS";
    
    self.tableView = [UITableView new];
    self.tableView.frame = self.view.bounds;
    self.tableView.backgroundColor = BCK_COLOR;
    self.tableView.contentInset = UIEdgeInsetsZero;
    self.tableView.separatorInset = UIEdgeInsetsZero;
    [self.view addSubview:self.tableView];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"ListTableViewCell" bundle:nil] forCellReuseIdentifier:CELL_IDENTIFIER];
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.tableView.dataSource = self.viewModel;
    self.tableView.delegate = self;
    [self.tableView reloadData];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 88.0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
