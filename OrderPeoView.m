//
//  OrderPeoView.m
//  Order
//
//  Created by cyd on 14-10-31.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "OrderPeoView.h"

@implementation OrderPeoView
-(void)creatxy :(UITableViewCell *)cel :(NSIndexPath *)indexpath :(NSArray *)list{
    UILabel *labelpeo=[[UILabel alloc]initWithFrame:CGRectMake(10, 10, 200, 20)];
    labelpeo.text=[list objectAtIndex:indexpath.row];
    [cel addSubview:labelpeo];

}

@end
