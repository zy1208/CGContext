//
//  UIImage+ZY.h
//  图片水印
//
//  Created by jsmysoft on 2017/5/15.
//  Copyright © 2017年 jsmysoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ZY)

/**
 打水印
 */

+ (instancetype)waterImageWithBg:(NSString *)bg logo:(NSString *)logo;

@end
