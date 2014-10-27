//
//  ThirdViewController3.m
//  Order
//
//  Created by cyd on 14-10-17.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "ThirdViewController3.h"

@interface ThirdViewController3 ()

@end

@implementation ThirdViewController3
@synthesize listdata;
@synthesize listdata2;
@synthesize listdata3;
@synthesize message;
- (id)init :(NSString *)strRestaurant
{
    self = [super init];
    if (self) {
        message = strRestaurant;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"选套餐";
    
    uitableview=[[UITableView alloc]initWithFrame:
                 CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width,[[UIScreen mainScreen] bounds].size.height) style:UITableViewStylePlain];
    
    NSDictionary *dic1=[[NSDictionary alloc]initWithObjectsAndKeys:@"汉堡",@"product",@"¥21",@"price", nil];
    NSDictionary *dic2=[[NSDictionary alloc]initWithObjectsAndKeys:@"鸡翅",@"product",@"¥15",@"price", nil];
    NSDictionary *dic3=[[NSDictionary alloc]
                        initWithObjectsAndKeys:@"鸡肉卷",@"product",@"¥28",@"price", nil];
    
    NSDictionary *dic4=[[NSDictionary alloc]initWithObjectsAndKeys:@"鸳鸯火锅",@"product", @"¥58",@"price",nil];
    NSDictionary *dic5=[[NSDictionary alloc]initWithObjectsAndKeys:@"排骨火锅",@"product", @"¥42",@"price",nil];
    NSDictionary *dic6=[[NSDictionary alloc]initWithObjectsAndKeys:@"全辣火锅",@"product", @"¥36",@"price",nil];
    
    NSDictionary *dic7=[[NSDictionary alloc]initWithObjectsAndKeys:@"鸵鸟肉披萨",@"product", @"¥58",@"price",nil];
    NSDictionary *dic8=[[NSDictionary alloc]initWithObjectsAndKeys:@"蜗牛肉披萨",@"product", @"¥55",@"price",nil];
    NSDictionary *dic9=[[NSDictionary alloc]initWithObjectsAndKeys:@"虾肉披萨",@"product", @"¥48",@"price",nil];
    

    self.listdata=[[NSArray alloc]initWithObjects:dic1,dic2,dic3, nil];
    self.listdata2=[[NSArray alloc]initWithObjects:dic4,dic5,dic6, nil];
    self.listdata3=[[NSArray alloc]initWithObjects:dic7,dic8,dic9, nil];
    
    uitableview.delegate=self;
    uitableview.dataSource=self;
    [self.view addSubview:uitableview];
    
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if ([message isEqualToString:@"KFC"]) {
        return listdata.count;
    }
    else if ([message isEqualToString:@"傣妹"]){
        return listdata2.count;
    }
    else{
        return listdata3.count;
    }
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *identify = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
        
        if ([message isEqualToString:@"KFC"]){
        UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(10, 10, 75, 20)];
        label1.text=[[self.listdata objectAtIndex:indexPath.row]objectForKey:@"product"];
        [cell addSubview:label1];
        
        UILabel *label2=[[UILabel alloc] initWithFrame:CGRectMake(10, 30, 50, 20)];
        label2.text=[[self.listdata objectAtIndex:indexPath.row]objectForKey:@"price"];
        [cell addSubview:label2];
        }
        
        else if ([message isEqualToString:@"傣妹"]){
            UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(10, 10, 75, 20)];
            label1.text=[[self.listdata2 objectAtIndex:indexPath.row]objectForKey:@"product"];
            [cell addSubview:label1];
            
            UILabel *label2=[[UILabel alloc] initWithFrame:CGRectMake(10, 30, 50, 20)];
            label2.text=[[self.listdata2 objectAtIndex:indexPath.row]objectForKey:@"price"];
            [cell addSubview:label2];
        }
        
        else{
            UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(10, 10, 85, 20)];
            label1.text=[[self.listdata3 objectAtIndex:indexPath.row]objectForKey:@"product"];
            [cell addSubview:label1];
            
            UILabel *label2=[[UILabel alloc] initWithFrame:CGRectMake(10, 30, 50, 20)];
            label2.text=[[self.listdata3 objectAtIndex:indexPath.row]objectForKey:@"price"];
            [cell addSubview:label2];
        }
        
        
    }
    return  cell;
}


-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if ([message isEqualToString:@"KFC"]){
    [[NSNotificationCenter defaultCenter]postNotificationName:@"package" object:[self.listdata objectAtIndex:indexPath.row]];
        [self.navigationController popViewControllerAnimated:YES];}
    
    else if ([message isEqualToString:@"傣妹"]){
        [[NSNotificationCenter defaultCenter]postNotificationName:@"package" object:[self.listdata2 objectAtIndex:indexPath.row]];
        [self.navigationController popViewControllerAnimated:YES];
    }
    
    else{
        [[NSNotificationCenter defaultCenter]postNotificationName:@"package" object:[self.listdata3 objectAtIndex:indexPath.row]];
        [self.navigationController popViewControllerAnimated:YES];
    }
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
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
