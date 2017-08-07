//
//  ZYImageView.m
//  模仿UIImageView
//
//  Created by jsmysoft on 2017/5/15.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//


/*
  自定义控件一定要重写setter和getter方法
  进行重绘
*/

#import "ZYImageView.h"

@implementation ZYImageView

- (void)setImage:(UIImage *)image {
    
    _image = image;
    
    [self setNeedsDisplay];
    
}

- (void)drawRect:(CGRect)rect {
    
    [_image drawInRect:rect];
    
}

@end
