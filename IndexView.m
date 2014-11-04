//
//  IndexView.m
//  Order
//
//  Created by cyd on 14-11-3.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "IndexView.h"

@implementation IndexView

- (BOOL)setHelpWithTarget:(id)target andSEL:(SEL)selHelp{
    UIButton *buttonHelp=[[UIButton alloc]initWithFrame:CGRectMake([[UIScreen mainScreen]bounds].size.width/2-35, 70, 70, 60)];
    [buttonHelp setTitle:@"帮订餐" forState:UIControlStateNormal];
    [buttonHelp setTitleColor:[UIColor blackColor] forState: UIControlStateNormal];
    [buttonHelp addTarget:target action:selHelp forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:buttonHelp];
    return YES;
}

- (BOOL)setSelectWithTarget:(id)target andSEL:(SEL)selSelect{
    UIButton *buttonSelect=[[UIButton alloc]initWithFrame:CGRectMake([[UIScreen mainScreen]bounds].size.width/2-43, 120, 90, 60)];
    [buttonSelect setTitle:@"帮查订单" forState:(UIControlStateNormal)];
    [buttonSelect setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [buttonSelect addTarget:target action:selSelect forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:buttonSelect];
    return YES;
}


@end
