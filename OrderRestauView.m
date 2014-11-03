//
//  OrderRestauView.m
//  Order
//
//  Created by cyd on 14-10-31.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "OrderRestauView.h"

@implementation OrderRestauView

-(void)creatxy :(UITableViewCell *)cel :(NSIndexPath *)indexpath :(NSArray *)list{
    UILabel *labelres=[[UILabel alloc]initWithFrame:CGRectMake(10, 10, 200, 20)];
    labelres.text=[list objectAtIndex:indexpath.row];
    [cel addSubview:labelres];
}

@end
    