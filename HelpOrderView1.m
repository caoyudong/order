//
//  HelpOrderView1.m
//  Order
//
//  Created by cyd on 14-10-31.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "HelpOrderView1.h"

@implementation HelpOrderView1
- (id)init
{
    self = [super init];
    if (self) {
        [self createLabelts:CGRectMake(10, 70, 60, 30) :@"人:" :[UIColor blackColor]];
        
        [self createLabelvalue:CGRectMake(10, 110, 350, 30) :[UIColor lightGrayColor]];
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

@end
