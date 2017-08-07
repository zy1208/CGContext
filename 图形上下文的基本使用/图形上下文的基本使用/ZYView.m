//
//  ZYView.m
//  图形上下文的基本使用
//
//  Created by jsmysoft on 2017/5/15.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import "ZYView.h"

@implementation ZYView

/*
  1、为什么要写drawRect
  因为在drawRect中可以拿到图形上下文
  2、为什么要拿到图形上下文
  因为图形上下文可以保存绘制的路径并将它显示到view上
*/

- (void)drawRect:(CGRect)rect {
    
    //1、获取图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //2、创建路径
    CGMutablePathRef linePath = CGPathCreateMutable();
    //3、拼接路径
    CGPathMoveToPoint(linePath, NULL, 0, 0);
    CGPathAddLineToPoint(linePath, NULL, 100, 100);
    //5、添加路径到图形上下文
    CGContextAddPath(ctx, linePath);
    
#warning 添加一个圆
    CGMutablePathRef circlePath = CGPathCreateMutable();
    CGPathAddArc(circlePath, NULL, 150, 150, 100, 0, M_PI *2, 0);
    CGContextAddPath(ctx, circlePath);
    
    //6、渲染
    CGContextStrokePath(ctx);
//    CGContextFillPath(ctx);
    //7、释放
    CGPathRelease(linePath);
    CGPathRelease(circlePath);
}

@end
