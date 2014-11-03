//
//  HelpOrderView.m
//  Order
//
//  Created by cyd on 14-10-30.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "HelpOrderView.h"
@implementation HelpOrderView
@synthesize labelpeople;
@synthesize labelrestaurant;
@synthesize labelpackage;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createLabelts:CGRectMake(10, 70, 60, 30) :@"人:" :[UIColor blackColor]];
        [self createLabelts:CGRectMake(10, 220, 60, 30) :@"餐厅:" :[UIColor blackColor]];
        [self createLabelts:CGRectMake(10, 370, 60, 30) :@"套餐:" :[UIColor blackColor]];
        labelpeople=[self createLabelvalue:CGRectMake(10, 110, 350, 30) :[UIColor lightGrayColor]];
        labelrestaurant=[self createLabelvalue:CGRectMake(10, 260, 350, 30) :[UIColor lightGrayColor]];
        labelpackage=[self createLabelvalue:CGRectMake(10, 410, 350, 30) :[UIColor lightGrayColor]];


    }
    return self;
}

- (UILabel *)createLabelts :(CGRect)frame :(NSString *)strText :(UIColor *)labelColor
{
    
    UILabel *lable=[[UILabel alloc]initWithFrame:frame];
    lable.text=strText;
    lable.textColor = labelColor;
    [self addSubview:lable];
    return lable;
}


- (UILabel *)createLabelvalue :(CGRect)frame :(UIColor *)lableColor
{
    UILabel *lable=[[UILabel alloc]initWithFrame:frame];
    lable.backgroundColor=lableColor;
    [self addSubview:lable];
    return lable;
}

- (BOOL)setPeopleWithTarget:(id)target andSEL:(SEL)selPeople
{
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(10, 170, 350, 30);
    [button setTitle:@"选人" forState:UIControlStateNormal];
    button.backgroundColor= [UIColor redColor];
    [button addTarget:target action:selPeople forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button];
    return YES;
}

- (BOOL)setRestaurantWithTarget:(id)target andSEL:(SEL)selRestaurant
{
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(10, 320, 350, 30);
    [button setTitle:@"选餐厅" forState:UIControlStateNormal];
    button.backgroundColor= [UIColor redColor];
    [button addTarget:target action:selRestaurant forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button];
    return YES;
}


- (BOOL)setPackageWithTarget:(id)target andSEL:(SEL)selPackage
{
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(10, 470, 350, 30);
    [button setTitle:@"选套餐" forState:UIControlStateNormal];
    button.backgroundColor= [UIColor redColor];
    [button addTarget:target action:selPackage forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button];
    return YES;
}
- (BOOL)setOkWithTarget:(id)target andSEL:(SEL)selOk
{
    UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(10, 520, 350, 30);
    [button setTitle:@"确认" forState:UIControlStateNormal];
    button.backgroundColor= [UIColor redColor];
    [button addTarget:target action:selOk forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button];
    return YES;
}


@end
