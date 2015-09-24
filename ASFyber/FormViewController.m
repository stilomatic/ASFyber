//
//  ViewController.m
//  fyberChallenge
//
//  Created by Antonio_Stilo on 22/09/15.
//  Copyright (c) 2015 Antonio_Stilo. All rights reserved.
//

#import "FormViewController.h"
#import "Global.h"
#import "RequestMaker.h"
#import "ListViewController.h"
#import "ListViewModel.h"


@interface FormViewController ()

@property (nonatomic, retain) IBOutlet UITextField *uidTextField;
@property (nonatomic, retain) IBOutlet UITextField *appKeyTextField;
@property (nonatomic, retain) IBOutlet UITextField *appIdTextField;


@end

@implementation FormViewController

- (IBAction)submitOffersRequest
{

    RequestMaker *requestMaker = [RequestMaker new];
    [requestMaker retriveOffers:^(NSArray *data) {
        
        ListViewModel *viewModel = [ListViewModel new];
        viewModel.data = data;
        ListViewController *listViewController = [[ListViewController alloc] initWithNibName:nil bundle:nil];
        listViewController.viewModel = viewModel;
        [self.navigationController pushViewController:listViewController animated:YES];
        
    }];
    
    UIActivityIndicatorView *preloader = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:preloader];
    
    self.navigationItem.rightBarButtonItem = rightItem;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:BCK_COLOR}];
    
    self.title = @"FYBER CHALLENGE";
    
    self.uidTextField.text = UID;
    self.appKeyTextField.text = APIKEY;
    self.appIdTextField.text = APPID;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
