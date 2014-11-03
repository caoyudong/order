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
   // NSArray *arry=[[NSArray alloc]initWithObjects:@"帮订餐", @"查订单",nil];
    //self.listdata=arry;
//    uitableview=[[UITableView alloc]initWithFrame:CGRectMake(0, 0,[[UIScreen mainScreen] bounds].size.width,[[UIScreen mainScreen] bounds].size.height) style:UITableViewStylePlain];
    UIButton *button1=[[UIButton alloc]initWithFrame:CGRectMake(153, 70, 70, 60)];
    [button1 setTitle:@"帮订餐" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor blackColor] forState: UIControlStateNormal];
    UIButton *button2=[[UIButton alloc]initWithFrame:CGRectMake(143, 120, 90, 60)];
    [button2 setTitle:@"帮查订单" forState:(UIControlStateNormal)];
    [button2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(click1:) forControlEvents:UIControlEventTouchUpInside];
    [button2 addTarget:self action:@selector(click2:) forControlEvents:UIControlEventTouchUpInside];
    self.view.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:button1];
    [self.view addSubview:button2];
    

}

-(void)click1:(id)sender{
    HelpOrderController *secondviewcontroller=[HelpOrderController new];
    [self.navigationController pushViewController:secondviewcontroller animated:true];
}

-(void)click2:(id)sender{
    SelectListController *selectviewcontrol=[SelectListController new];
    [self.navigationController pushViewController:selectviewcontrol animated:true];
}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    NSString *identify = @"cell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
//        
//        
////        UILabel *lable=[[UILabel alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width / 2 -30, 20, 60, 30)];
////        lable.textColor=[UIColor blackColor];
////        lable.text=[self.listdata objectAtIndex:indexPath.row];
////        lable.textAlignment=NSTextAlignmentCenter;
////        
////        [cell addSubview:lable];
////        NSLog(@"%f",[UIScreen mainScreen].bounds.size.width);
//    }
//    
//        return cell;
//}

//-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    SecondViewController *secondviewcontroller=[SecondViewController new];
//        [self.navigationController pushViewController:secondviewcontroller animated:true];
//}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
