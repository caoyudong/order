//
//  ViewController.m
//  Order
//
//  Created by cyd on 14-10-16.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "IndexController.h"

@interface IndexController ()

@end

@implementation IndexController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"订餐";
    IndexView *indexview=[[IndexView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.view.backgroundColor=[UIColor whiteColor];
    [indexview setHelpWithTarget:self andSEL:@selector(clickHelp:)];
    [indexview setSelectWithTarget:self andSEL:@selector(clickSelect:)];
    [self.view addSubview:indexview];    

}

-(void)clickHelp:(id)sender{
    HelpOrderController *secondviewcontroller=[HelpOrderController new];
    [self.navigationController pushViewController:secondviewcontroller animated:true];
}

-(void)clickSelect:(id)sender{
    SelectListController *selectviewcontrol=[SelectListController new];
    [self.navigationController pushViewController:selectviewcontrol animated:true];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
