//
//  HelpOrderView.m
//  Order
//
//  Created by cyd on 14-10-29.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "OrderPacgeView.h"

@implementation OrderPacgeView

-(void)creatxy:(UITableViewCell *)cel :(NSIndexPath *)indexpath :(NSArray *)listdt
{
    
    UILabel *labelpro=[[UILabel alloc]initWithFrame:CGRectMake(10, 10, 85, 20)];
    labelpro.text=[[listdt objectAtIndex:indexpath.row]objectForKey:@"product"];
    [cel addSubview:labelpro];
    
    UILabel *labelpri=[[UILabel alloc] initWithFrame:CGRectMake(10, 30, 50, 20)];
    labelpri.text=[[listdt objectAtIndex:indexpath.row]objectForKey:@"price"];
    [cel addSubview:labelpri];
    
}

@end
