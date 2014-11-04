//
//  ThirdViewController1.m
//  Order
//
//  Created by cyd on 14-10-17.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "OrderPeopleController.h"

@interface OrderPeopleController ()

@end

@implementation OrderPeopleController
@synthesize arraypeoplelistdata;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"选人";
    m_orderpeopleuitableview=[[UITableView alloc]initWithFrame:
                 CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width,[[UIScreen mainScreen] bounds].size.height) style:UITableViewStylePlain];
    
    
    arraypeoplelistdata=[[NSArray alloc]initWithObjects:@"汪涵",
                         @"欧弟",@"钱枫",@"田源",@"浩二",@"小五",@"俞灏明", nil];
    
    m_orderpeopleuitableview.dataSource=self;
    m_orderpeopleuitableview.delegate=self;
    
    [self.view addSubview:m_orderpeopleuitableview];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return arraypeoplelistdata.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    NSString *identify = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
        UILabel *labelpeo=[[UILabel alloc]initWithFrame:CGRectMake(10, 10, 200, 20)];
        labelpeo.text=[arraypeoplelistdata objectAtIndex:indexPath.row];
        [cell addSubview:labelpeo];
    }
        return cell;
}


-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [[NSNotificationCenter defaultCenter]postNotificationName:@"people" object:[self.arraypeoplelistdata objectAtIndex:indexPath.row]];
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
