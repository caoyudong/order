//
//  Secondodel.m
//  Order
//
//  Created by cyd on 14-10-28.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "HelpOrderModel.h"

@implementation HelpOrderModel

-(void)saveData:(NSDictionary *)dic{
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSDictionary *dict=dic;
    //    NSMutableArray *temp=[[NSMutableArray alloc]initWithContentsOfFile:appDelegate.filename];
    NSMutableArray *temp=[NSKeyedUnarchiver unarchiveObjectWithFile:appDelegate.filename];
    if (temp == nil) {
        temp = [[NSMutableArray alloc]initWithCapacity:0];
    }
    [temp addObject:dict];
    [NSKeyedArchiver archiveRootObject:temp toFile:appDelegate.filename];
    

}

@end
