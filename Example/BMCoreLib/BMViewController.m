//
//  BMViewController.m
//  BMCoreLib
//
//  Created by 805413147@qq.com on 09/01/2020.
//  Copyright (c) 2020 805413147@qq.com. All rights reserved.
//

#import "BMViewController.h"
#import <BMCoreLib/BMMeetingController.h>

@interface BMViewController ()

@end

@implementation BMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)btnToMeetingAction:(UIButton *)sender {
    BMMeetingController *vc = [[BMMeetingController alloc] init];
    [self.navigationController pushViewController:vc animated:true];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
