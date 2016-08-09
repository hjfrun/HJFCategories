//
//  UIImage+HJFExtension.m
//  HJFCategoriesDemo
//
//  Created by HE Jianfeng on 16/8/8.
//  Copyright © 2016年 贺剑峰. All rights reserved.
//

#import "UIImage+HJFExtension.h"

@implementation UIImage (Circle)

+ (instancetype)circleImageNamed:(NSString *)imageName
{
    return [[self imageNamed:imageName] circleImage];
}

- (instancetype)circleImage
{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.f);
    
    UIBezierPath *circlePath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
    [circlePath addClip];
    
    [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
    
    UIImage *circleImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return circleImage;
}

- (instancetype)imageWithCornerRadius:(CGFloat)radius
{
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextAddPath(context, [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:radius].CGPath);
    CGContextClip(context);
    
    [self drawInRect:rect];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end

@implementation UIImage (UIColor)

+ (instancetype)imageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0, 0, 1, 1);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}


@end
