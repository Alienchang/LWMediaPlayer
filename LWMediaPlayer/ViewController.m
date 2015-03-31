//
//  ViewController.m
//  LWMediaPlayer
//
//  Created by 刘畅 on 15/3/31.
//  Copyright (c) 2015年 刘畅. All rights reserved.
//

#import "ViewController.h"

//test
#import "VideoViewController.h"
#import "PictureViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *vieoViewControllerButton = [[UIButton alloc] initWithFrame:CGRectMake(20, 80, 100, 100)];
    [vieoViewControllerButton setBackgroundColor:[UIColor redColor]];
    [vieoViewControllerButton setTitle:@"视频" forState:UIControlStateNormal];
    [vieoViewControllerButton addTarget:self action:@selector(videoButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:vieoViewControllerButton];
    
    
    UIButton *pictureViewControllerButton = [[UIButton alloc] initWithFrame:CGRectMake(20, 200, 100, 100)];
    [pictureViewControllerButton setBackgroundColor:[UIColor greenColor]];
    [pictureViewControllerButton setTitle:@"图片" forState:UIControlStateNormal];
    [pictureViewControllerButton addTarget:self action:@selector(pictureButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pictureViewControllerButton];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)videoButtonAction
{
    [self.navigationController pushViewController:[VideoViewController new] animated:YES];
}

- (void)pictureButtonAction
{
    [self.navigationController pushViewController:[PictureViewController new] animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
