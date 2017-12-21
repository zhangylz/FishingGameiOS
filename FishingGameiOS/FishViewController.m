//
//  FishViewController.m
//  FishingGameiOS
//
//  Created by DFD on 2017/12/20.
//  Copyright © 2017年 DF. All rights reserved.
//

#import "FishViewController.h"
#import "FishingView.h"

@interface FishViewController ()

@property (nonatomic, strong) FishingView *fishView;

@end

@implementation FishViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _fishView = [[FishingView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:_fishView];
    
    UIButton *closeBtn = [[UIButton alloc] initWithFrame:CGRectMake(10, 10, 80, 50)];
    [closeBtn setTitle:@"返回" forState:UIControlStateNormal];
    [closeBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [closeBtn addTarget:self action:@selector(closeAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:closeBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)closeAction{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewDidDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [_fishView removeFishViewResource];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:animated];
}

-(void)dealloc{
    NSLog(@"释放了");
}


@end
