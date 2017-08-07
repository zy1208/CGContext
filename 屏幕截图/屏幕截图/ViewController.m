//
//  ViewController.m
//  屏幕截图
//
//  Created by jsmysoft on 2017/5/15.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ZYCapture.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    //添加view
    [self addView];
    //添加按钮
    [self addButton];
}

#pragma mark -- 添加view
- (void)addView {
    
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    contentView.backgroundColor = [UIColor redColor];
    [self.view addSubview:contentView];
    
}

#pragma mark -- 添加按钮
- (void)addButton {
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 121, 37)];
    [button setTitle:@"截图" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor orangeColor];
    [button addTarget: self action:@selector(buttonDidClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonDidClick:(UIButton *)button {
    
    //1、捕捉
    UIImage *newImage = [UIImage captureWithView:self.view];
    
    //2、写入文件
    NSData *data = UIImagePNGRepresentation(newImage);
    NSString *path = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"new.png"];
    NSLog(@"path====%@",path);
    [data writeToFile:path atomically:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
