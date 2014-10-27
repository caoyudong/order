//
//  ThirdViewController2.m
//  Order
//
//  Created by cyd on 14-10-17.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "ThirdViewController2.h"

@interface ThirdViewController2 ()

@end

@implementation ThirdViewController2
@synthesize listdata;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"选餐厅";
    uitableview=[[UITableView alloc]initWithFrame:
                 CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width,[[UIScreen mainScreen] bounds].size.height) style:UITableViewStylePlain];
    
    
    NSArray *nsarry=[[NSArray alloc]initWithObjects:@"KFC",@"必胜客",@"傣妹", nil];
    listdata=nsarry;
    uitableview.dataSource=self;
    uitableview.delegate=self;
    
    [self.view addSubview:uitableview];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return listdata.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *identify = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
        UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(10, 10, 200, 20)];
        label.text=[self.listdata objectAtIndex:indexPath.row];
        [cell addSubview:label];
        
    }
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [[NSNotificationCenter defaultCenter]postNotificationName:@"restaurant" object:[self.listdata objectAtIndex:indexPath.row]];
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
