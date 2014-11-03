//
//  SelectListView.m
//  Order
//
//  Created by cyd on 14-11-3.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "SelectListView.h"

@implementation SelectListView

-(void)creatxy:(UITableViewCell *)cel :(NSIndexPath *)indexpath :(UILabel *)label :(NSMutableArray *)list{
    
    UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(10, 50, 85, 20)];
    [cel addSubview:label2];
    UILabel *label3=[[UILabel alloc]initWithFrame:CGRectMake(70, 50, 85, 20)];
    [cel addSubview:label3];
    UILabel *label4=[[UILabel alloc]initWithFrame:CGRectMake(180, 30, 85, 20)];
    [cel addSubview:label4];
    
    label.text=[[list objectAtIndex:indexpath.row] objectForKey:@"1"];
    label2.text=[[list objectAtIndex:indexpath.row] objectForKey:@"2"];
    
    label3.text=[[list objectAtIndex:indexpath.row] objectForKey:@"3"];
    label4.text=[[list objectAtIndex:indexpath.row] objectForKey:@"4"];
    NSString *a=label4.text;
    int b=[[a substringWithRange:NSMakeRange(1, 2)]intValue];
    
    if(b>42)   label4.textColor=[UIColor redColor];
    
}
@end
