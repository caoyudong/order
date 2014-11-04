//
//  ThirdViewController3.h
//  Order
//
//  Created by cyd on 14-10-17.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrderPacgeController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    UITableView *m_orderpacuitableview;
    NSDictionary *dic_list;
}
@property NSString *message;
- (id)init :(NSString *)strRestaurant;
@end
