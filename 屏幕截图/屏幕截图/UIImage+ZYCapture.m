//
//  UIImage+ZYCapture.m
//  屏幕截图
//
//  Created by jsmysoft on 2017/5/15.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "UIImage+ZYCapture.h"

@implementation UIImage (ZYCapture)

+ (instancetype)captureWithView:(UIView *)view {
 
    //1、开启上下文
    UIGraphicsBeginImageContextWithOptions(view.frame.size, NO, 0.0);
    
    //2、将控制器view的layer渲染到上下文
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    //3、取出图片
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    //4、结束上下文
    UIGraphicsEndImageContext();
    
    return newImage;
    
}

@end
