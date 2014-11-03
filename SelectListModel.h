//
//  SelectListModel.h
//  Order
//
//  Created by cyd on 14-10-29.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "SelectListController.h"
@interface SelectListModel : NSObject
{
    NSMutableArray *arraylocaldata;
}
//-(void)readData:(NSMutableArray *)arraypeoplelist :(NSMutableArray *)arraylocaldata;
-(NSMutableArray *)readData;
-(NSMutableArray *)wdOrder;

@end
