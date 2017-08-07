//
//  ViewController.m
//  图形上下文的基本使用
//
//  Created by jsmysoft on 2017/5/15.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "ViewController.h"
#import "ZYView.h"

#define MainWidth [UIScreen mainScreen].bounds.size.width

#define MainHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@property (nonatomic, strong) ZYView *zyView;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
   
    //添加view
    [self addView];
    
}

- (void)addView {
    
    self.zyView = [[ZYView alloc] init];
    self.zyView.frame = self.view.bounds;
    self.zyView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.zyView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
