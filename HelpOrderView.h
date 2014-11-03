//
//  HelpOrderView.h
//  Order
//
//  Created by cyd on 14-10-30.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelpOrderView : UIView{
    
}
@property UILabel *labelpeople;
@property UILabel *labelrestaurant;
 @property UILabel *labelpackage;

- (id)initWithFrame:(CGRect)frame;
- (BOOL)setPeopleWithTarget:(id)target andSEL:(SEL)selPeople;
- (BOOL)setRestaurantWithTarget:(id)target andSEL:(SEL)selRestaurant;
- (BOOL)setPackageWithTarget:(id)target andSEL:(SEL)selPackage;
- (BOOL)setOkWithTarget:(id)target andSEL:(SEL)selOk;
@end
