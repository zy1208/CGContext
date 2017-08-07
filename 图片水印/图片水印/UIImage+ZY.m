//
//  UIImage+ZY.m
//  图片水印
//
//  Created by jsmysoft on 2017/5/15.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "UIImage+ZY.h"

@implementation UIImage (ZY)

+ (instancetype)waterImageWithBg:(NSString *)bg logo:(NSString *)logo {
   
    UIImage *bgImage = [UIImage imageNamed:bg];
    
    //1、创建基于位图的上下文
    UIGraphicsBeginImageContextWithOptions(bgImage.size, NO, 0.0);
    
    //2、画背景
    [bgImage drawInRect:CGRectMake(0, 0, bgImage.size.width, bgImage.size.height)];
    
    //3、画右下角水印
    UIImage *waterImage = [UIImage imageNamed:logo];
    CGFloat scale = 0.2;
    CGFloat margin = 5;
    CGFloat waterW = waterImage.size.width *scale;
    CGFloat waterH = waterImage.size.height *scale;
    CGFloat waterX = bgImage.size.width - waterW - margin;
    CGFloat waterY = bgImage.size.height - waterH - margin;
    [waterImage drawInRect:CGRectMake(waterX, waterY, waterW, waterH)];
    
    //4、从上下文中取得制作完毕的UIImage对象
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    //5、结束上下文
    UIGraphicsEndImageContext();
    
    return newImage;
}

@end
