//
//  ThirdViewController2.m
//  Order
//
//  Created by cyd on 14-10-17.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "OrderRestauController.h"

@interface OrderRestauController ()

@end

@implementation OrderRestauController
@synthesize arrayreslistdata;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"选餐厅";
    m_orderresuitableview=[[UITableView alloc]initWithFrame:
                 CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width,[[UIScreen mainScreen] bounds].size.height) style:UITableViewStylePlain];
    
    
    arrayreslistdata=[[NSArray alloc]initWithObjects:@"KFC",@"必胜客",@"傣妹", nil];
    
    m_orderresuitableview.dataSource=self;
    m_orderresuitableview.delegate=self;
    
    [self.view addSubview:m_orderresuitableview];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return arrayreslistdata.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *identify = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
        
        UILabel *labelres=[[UILabel alloc]initWithFrame:CGRectMake(10, 10, 200, 20)];
        labelres.text=[arrayreslistdata objectAtIndex:indexPath.row];
        [cell addSubview:labelres];
        
    }
    return cell;
}




-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [[NSNotificationCenter defaultCenter]postNotificationName:@"restaurant" object:[self.arrayreslistdata objectAtIndex:indexPath.row]];
[self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
