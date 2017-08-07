//
//  UIImage+ZYCornerRound.h
//  图片裁剪
//
//  Created by jsmysoft on 2017/5/15.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ZYCornerRound)

+ (instancetype)circleImageWithName:(NSString *)name borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;

@end
