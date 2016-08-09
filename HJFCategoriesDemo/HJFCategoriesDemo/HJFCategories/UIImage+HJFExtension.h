//
//  UIImage+HJFExtension.h
//  HJFCategoriesDemo
//
//  Created by HE Jianfeng on 16/8/8.
//  Copyright © 2016年 贺剑峰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Circle)

+ (instancetype)circleImageNamed:(NSString *)imageName;

- (instancetype)circleImage;

- (instancetype)imageWithCornerRadius:(CGFloat)radius;

@end

@interface UIImage (UIColor)

+ (instancetype)imageWithColor:(UIColor *)color;

@end

