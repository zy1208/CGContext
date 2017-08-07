//
//  ViewController.m
//  图片裁剪
//
//  Created by jsmysoft on 2017/5/15.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ZYCornerRound.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    imageView.image = [UIImage circleImageWithName:@"180" borderWidth:10 borderColor:[UIColor redColor]];
    [self.view addSubview:imageView];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
