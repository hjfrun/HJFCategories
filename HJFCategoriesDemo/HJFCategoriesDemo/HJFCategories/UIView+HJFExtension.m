//
//  UIView+HJFExtension.m
//  HJFCategoriesDemo
//
//  Created by HE Jianfeng on 16/8/8.
//  Copyright © 2016年 贺剑峰. All rights reserved.
//

#import "UIView+HJFExtension.h"

@implementation UIView (frame)

- (CGFloat)hjf_x
{
    return self.frame.origin.x;
}

- (void)setHjf_x:(CGFloat)hjf_x
{
    CGRect frame = self.frame;
    frame.origin.x = hjf_x;
    self.frame = frame;
}

- (CGFloat)hjf_y
{
    return self.frame.origin.y;
}

- (void)setHjf_y:(CGFloat)hjf_y
{
    CGRect frame = self.frame;
    frame.origin.y = hjf_y;
    self.frame = frame;
}

- (CGFloat)hjf_maxX
{
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setHjf_maxX:(CGFloat)hjf_maxX
{
    [self setHjf_x:hjf_maxX - self.frame.size.width];
}

- (CGFloat)hjf_maxY
{
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setHjf_maxY:(CGFloat)hjf_maxY
{
    [self setHjf_y:hjf_maxY - self.frame.size.height];
}

- (CGFloat)hjf_width
{
    return self.frame.size.width;
}

- (void)setHjf_width:(CGFloat)hjf_width
{
    CGRect frame = self.frame;
    frame.size.width = hjf_width;
    self.frame = frame;
}

- (CGFloat)hjf_height
{
    return self.frame.size.height;
}

- (void)setHjf_height:(CGFloat)hjf_height
{
    CGRect frame = self.frame;
    frame.size.height = hjf_height;
    self.frame = frame;
}

- (CGFloat)hjf_centerX
{
    return self.center.x;
}

- (void)setHjf_centerX:(CGFloat)hjf_centerX
{
    CGPoint center = self.center;
    center.x = hjf_centerX;
    self.center = center;
}

- (CGFloat)hjf_centerY
{
    return self.center.y;
}

- (void)setHjf_centerY:(CGFloat)hjf_centerY
{
    CGPoint center = self.center;
    center.y = hjf_centerY;
    self.center = center;
}

- (CGPoint)hjf_origin
{
    return self.frame.origin;
}

- (void)setHjf_origin:(CGPoint)hjf_origin
{
    CGRect frame = self.frame;
    frame.origin = hjf_origin;
    self.frame = frame;
}

- (CGSize)hjf_size
{
    return self.frame.size;
}

- (void)setHjf_size:(CGSize)hjf_size
{
    CGRect frame = self.frame;
    frame.size = hjf_size;
    self.frame = frame;
}



@end
