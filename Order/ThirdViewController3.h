//
//  ThirdViewController3.h
//  Order
//
//  Created by cyd on 14-10-17.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController3 : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    UITableView *uitableview;
}
@property NSArray *listdata;
@property NSArray *listdata2;
@property NSArray *listdata3;
@property NSString *message;
- (id)init :(NSString *)strRestaurant;
@end
