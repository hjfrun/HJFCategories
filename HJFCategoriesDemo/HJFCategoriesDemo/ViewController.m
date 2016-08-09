//
//  ViewController.m
//  HJFCategoriesDemo
//
//  Created by HE Jianfeng on 16/8/8.
//  Copyright © 2016年 贺剑峰. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+HJFExtension.h"
#import "UIView+HJFExtension.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (nonatomic, weak) UIView *redView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 生成圆头像
//    self.imageView.image = [[UIImage imageNamed:@"cat"] circleImage];
//    self.imageView.image = [UIImage circleImageNamed:@"cat"];
    
    // 带圆角的头像
//    self.imageView.image = [[UIImage imageNamed:@"cat"] imageWithCornerRadius:25.f];
//    self.imageView.image = [UIImage imageWithColor:[UIColor redColor]];

//    self.view.layer.contents = (id)[[UIImage imageNamed:@"back"] imageWithCornerRadius:25.f].CGImage;
    
    self.imageView.image = [UIImage circleImageNamed:@"cat"];
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    self.redView = redView;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.redView.hjf_maxX = 200;
    self.redView.hjf_maxY = 200;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
