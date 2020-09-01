//
//  BMMeetingController.m
//  BMCore
//
//  Created by zhaozhidan on 2020/9/1.
//  Copyright © 2020 boommeeting. All rights reserved.
//

#import "BMMeetingController.h"
#import <React/RCTRootView.h>
#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <React/RCTBridgeDelegate.h>

@interface BMMeetingController ()<RCTBridgeDelegate>
@property (nonatomic, strong) RCTBridge *bridge;

@end

@implementation BMMeetingController


- (void)loadView {
    RCTRootView *rootView = [[RCTRootView alloc] initWithBridge:self.bridge
                                                     moduleName:@"RLDemo" initialProperties:nil];
    rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];
    self.view = rootView;
}


- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge {
    return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (RCTBridge *)bridge {
    if (!_bridge) {
        _bridge =  [[RCTBridge alloc] initWithDelegate:self launchOptions:nil];
    }
    return _bridge;
}

@end
