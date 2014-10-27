//
//  ThirdViewController2.h
//  Order
//
//  Created by cyd on 14-10-17.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController2 : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    
    UITableView *uitableview;
    
}
@property NSArray *listdata;
@end
