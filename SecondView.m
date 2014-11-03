//
//  SecondView.m
//  Order
//
//  Created by cyd on 14-10-28.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "SecondView.h"

@implementation SecondView



- (UILabel *)createLabel1 :(CGRect)frame :(NSString *)strText :(UIColor *)labelColor
{
    UILabel *lable=[[UILabel alloc]initWithFrame:frame];
    lable.text=strText;
    lable.textColor = labelColor;
    [self.view addSubview:lable];
    return lable;
}

- (UILabel *)createLabel2 :(CGRect)frame :(UIColor *)lableColor
{
    UILabel *lable=[[UILabel alloc]initWithFrame:frame];
    lable.backgroundColor=lableColor;
    [self.view addSubview:lable];
    return lable;
}

- (UIButton *)createbuttion :(CGRect)frame :(NSString *)strTitle
{
    UIButton *button=[[UIButton alloc]initWithFrame:frame];
    [button setTitle:strTitle forState:UIControlStateNormal];
    button.backgroundColor= [UIColor redColor];
    [self.view addSubview:button];
    return button;
}

@end
