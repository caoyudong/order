
//
//  SecondViewController.m
//  Order
//
//  Created by cyd on 14-10-16.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "HelpOrderController.h"


@interface HelpOrderController ()

@end

@implementation HelpOrderController
@synthesize stringprice;

- (void)viewDidLoad
{
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(showvaluepeo:) name:@"people" object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(showvalueres:) name:@"restaurant" object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(showvaluepac:) name:@"package" object:nil];

    
    self.title=@"订餐";
    self.view.backgroundColor = [UIColor whiteColor];

    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    m_helporderview = [[HelpOrderView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [m_helporderview setPeopleWithTarget:self andSEL:@selector(click_people:)];
    [m_helporderview setRestaurantWithTarget:self andSEL:@selector(click_restaurant:)];
    [m_helporderview setPackageWithTarget:self andSEL:@selector(click_package:)];
    [m_helporderview setOkWithTarget:self andSEL:@selector(click_ok:)];
    [self.view addSubview:m_helporderview];
    
}

-(void)click_people:(id)sender{
    OrderPeopleController *orderpeoplecontroller=[OrderPeopleController new];
    [self.navigationController pushViewController:orderpeoplecontroller animated:true];
}


-(void)click_restaurant:(id)sender{
    OrderRestauController *thirdviewcontroller2=[OrderRestauController new];
    [self.navigationController pushViewController:thirdviewcontroller2 animated:true];
}



-(void)click_package:(id)sender{
        OrderPacgeController *thirdviewcontroller3=[[OrderPacgeController alloc]init :m_helporderview.labelrestaurant.text];
        [self.navigationController pushViewController:thirdviewcontroller3 animated:true];
}


-(void)click_ok:(id)sender{
        HelpOrderModel *helpordermodel=[HelpOrderModel new];
        if (m_helporderview.labelpeople.text == nil || m_helporderview.labelrestaurant.text == nil || m_helporderview.labelpackage.text == nil)
            return;

    NSDictionary *dic = [[NSDictionary alloc]initWithObjectsAndKeys:m_helporderview.labelpeople.text,@"1",m_helporderview.labelrestaurant.text,@"2",m_helporderview.labelpackage.text,@"3",stringprice,@"4", nil];
        [helpordermodel saveData:dic];
        m_helporderview.labelpeople.text=nil;
        m_helporderview.labelrestaurant.text=nil;
        m_helporderview.labelpackage.text=nil;
}

-(void) showvaluepeo:(NSNotification *)notification
{
    NSString *text=notification.object;
    m_helporderview.labelpeople.text=text;
    
}

-(void) showvalueres:(NSNotification *)notification
{
    NSString *text=notification.object;
    m_helporderview.labelrestaurant.text=text;
    
}

-(void) showvaluepac:(NSNotification *)notification
{
    NSString *text=[notification.object objectForKey:@"product"];
    stringprice=[notification.object objectForKey:@"price"];
    m_helporderview.labelpackage.text=text;
    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
