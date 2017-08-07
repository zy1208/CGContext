//
//  ViewController.m
//  模仿UIImageView
//
//  Created by jsmysoft on 2017/5/15.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "ViewController.h"
#import "ZYImageView.h"

@interface ViewController ()

@property (nonatomic, strong) ZYImageView *zyImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    //创建imageView
    [self addImageView];
}

- (void)addImageView {

    self.zyImageView = [[ZYImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:self.zyImageView];
    self.zyImageView.image = [UIImage imageNamed:@"20.png"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
