//
//  SelectListModel.m
//  Order
//
//  Created by cyd on 14-10-29.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "SelectListModel.h"

@implementation SelectListModel
-(NSMutableArray *)readData
{
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    arraylocaldata = [NSKeyedUnarchiver unarchiveObjectWithFile:appDelegate.filename];
    return arraylocaldata;
}
-(NSMutableArray *)wdOrder
{
    NSMutableArray *arraypeoplelist=[[NSMutableArray alloc] initWithObjects:@"汪涵",@"欧弟",@"钱枫",@"田源",@"浩二",@"小五",@"俞灏明", nil];
    for(NSObject *object1 in arraylocaldata){
        NSArray *values=[(NSDictionary *)object1 allValues];
        NSString *name=values[1];
        for(NSObject *object2 in arraypeoplelist){
            if([(NSString *)object2 isEqualToString:name]){
                 [arraypeoplelist removeObject:object2];
                break;
                
            }
        }
    }
    NSMutableArray *wdorder = arraypeoplelist;
    return wdorder;
}
@end
