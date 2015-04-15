//
//  UIColor+WF.m
//  ZAKER
//
//  Created by 开发者 on 15/4/4.
//  Copyright (c) 2015年 Jason. All rights reserved.
//

#import "UIColor+WFExtension.h"
#import "NSString+WFExtension.h"

@implementation UIColor (WFExtension)

/**
 *  通过字符串获取颜色值
 *
 *  @param rgb rgb字符串
 *
 *  @return 颜色值
 *
 *  @note  例：#FFFFFF / ffffff样式
 */
+(instancetype)colorWithRGBString:(NSString *)rgb {
    // 保持原有数据安全性
    NSString *rgbString = rgb.copy;
    
    if ([rgbString hasPrefix:@"#"]) {
        rgbString = [rgbString substringFromIndex:1];
    }
    // 获取字符串16进制数值
    NSUInteger rgbValue = [rgbString hexValue];
    
    return [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
                    green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
                     blue:((float)((rgbValue & 0xFF)/255.0)) alpha:1.0];
}

@end
