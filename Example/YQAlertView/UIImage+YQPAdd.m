//
//  UIImage+YQPAdd.m
//  yqpay
//
//  Created by 尹永奇 on 2018/3/12.
//  Copyright © 2018年 Cuiye. All rights reserved.
//

#import "UIImage+YQPAdd.h"
#import <YYKit/YYKit.h>
#import "UIColor+YYQExtension.h"

#define UIColorFromHex(s) [UIColor colorWithRed:(((s & 0xFF0000) >> 16))/255.0 green:(((s &0xFF00) >>8))/255.0 blue:((s &0xFF))/255.0 alpha:1.0]

@implementation UIImage (YQPAdd)

+ (instancetype)imageWithGradientWithFromColor:(UIColor *)fromColor toColor:(UIColor *)toColor size:(CGSize)size cornerRadius:(CGFloat)cornerRadius{
    CAGradientLayer *gradient = [CAGradientLayer layer];
    
    gradient.startPoint = CGPointMake(0, 0);
    
    gradient.endPoint = CGPointMake(1, 0);
    
        gradient.cornerRadius = cornerRadius;
    
    gradient.masksToBounds = YES;
    
    gradient.size = size;
    
    gradient.colors = [NSArray arrayWithObjects:(id)fromColor.CGColor,(id)toColor.CGColor,nil];
    
    return [gradient snapshotImage];
}

+ (instancetype)imageWithGradientWithFromColor:(UIColor *)fromColor toColor:(UIColor *)toColor size:(CGSize)size{
    
    return [self imageWithGradientWithFromColor:fromColor toColor:toColor size:size cornerRadius:size.height/2];
}

+ (instancetype)yqp_gradientColorImageWithSize:(CGSize)size{
    return [UIImage imageWithGradientWithFromColor:UIColorFromHex(0xFF6C16) toColor:UIColorFromHex(0xFFA901) size:size];
}



@end
