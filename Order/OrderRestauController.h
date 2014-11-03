//
//  ThirdViewController2.h
//  Order
//
//  Created by cyd on 14-10-17.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OrderRestauView.h"

@interface OrderRestauController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    
    UITableView *m_orderresuitableview;
    
}
@property NSArray *arrayreslistdata;
@end
