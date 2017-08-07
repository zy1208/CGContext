//
//  ViewController.m
//  条纹背景
//
//  Created by jsmysoft on 2017/5/16.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加背景图片
//    [self addImageBg];
    
    //添加textView
    [self addTextView];
    
    //textView添加条纹背景
    [self addLineBg];
}

- (void)addTextView {
    self.textView = [[UITextView alloc] initWithFrame:self.view.bounds];
    self.textView.text = @"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或或或或或或或或或或或或或哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或或和哈哈哈哈哈哈哈哈哈哈哈哈和或好哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈或或哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈和哈哈哈哈哈哈哈哈哈和或或和哈哈哈哈哈哈哈哈哈哈哈哈和";
    [self.view addSubview:self.textView];
}

- (void)addLineBg {
    
    CGFloat rowW = self.view.frame.size.width;
    CGFloat rowH = 30;
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(rowW, rowH), NO, 0.0);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //画矩形框
    [[UIColor redColor] set];
    CGContextAddRect(ctx, CGRectMake(0, 0, rowW, rowH));
    CGContextFillPath(ctx);
    
    //2、画线
    [[UIColor greenColor] set];
    CGFloat lineWidth = 2;
    CGContextSetLineWidth(ctx, lineWidth);
    CGFloat dividerX = 0;
    CGFloat dividerY = rowH - lineWidth;
    CGContextMoveToPoint(ctx, dividerX, dividerY);
    CGContextAddLineToPoint(ctx, rowW - dividerX, dividerY);
    CGContextStrokePath(ctx);
    
    //3、取图
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    //4、结束上下文
    UIGraphicsEndImageContext();
    
    //5、设置为背景
    self.textView.backgroundColor = [UIColor colorWithPatternImage:newImage];
}

- (void)addImageBg {
    UIImage *oldImage = [UIImage imageNamed:@"20"];
    UIGraphicsBeginImageContextWithOptions(self.view.frame.size, NO, 0.0);
    [oldImage drawInRect:self.view.bounds];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self.view.backgroundColor = [UIColor colorWithPatternImage:newImage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
