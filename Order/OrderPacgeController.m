//
//  ThirdViewController3.m
//  Order
//
//  Created by cyd on 14-10-17.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "OrderPacgeController.h"

@interface OrderPacgeController ()

@end

@implementation OrderPacgeController
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
    
    m_orderpacuitableview=[[UITableView alloc]initWithFrame:
                 CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width,[[UIScreen mainScreen] bounds].size.height) style:UITableViewStylePlain];
    
    [self initpackage];
    m_orderpacuitableview.delegate=self;
    m_orderpacuitableview.dataSource=self;
    [self.view addSubview:m_orderpacuitableview];
    
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[dic_list objectForKey:message] count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *identify = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
        
        [self creatxy:cell :indexPath :[dic_list objectForKey:message]];
        
    }
    return  cell;
}

-(void)creatxy:(UITableViewCell *)cel :(NSIndexPath *)indexpath :(NSArray *)listdt
{
    
    UILabel *labelpro=[[UILabel alloc]initWithFrame:CGRectMake(10, 10, 85, 20)];
    labelpro.text=[[listdt objectAtIndex:indexpath.row]objectForKey:@"product"];
    [cel addSubview:labelpro];
    
    UILabel *labelpri=[[UILabel alloc] initWithFrame:CGRectMake(10, 30, 50, 20)];
    labelpri.text=[[listdt objectAtIndex:indexpath.row]objectForKey:@"price"];
    [cel addSubview:labelpri];
    
}


-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    [[NSNotificationCenter defaultCenter]postNotificationName:@"package" object:[[dic_list objectForKey:message] objectAtIndex:indexPath.row]];
    [self.navigationController popViewControllerAnimated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}



-(void)initpackage{
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
    
    
    NSArray *listdata1=[[NSArray alloc]initWithObjects:dic1,dic2,dic3, nil];
    NSArray *listdata2=[[NSArray alloc]initWithObjects:dic4,dic5,dic6, nil];
    NSArray *listdata3=[[NSArray alloc]initWithObjects:dic7,dic8,dic9, nil];
    
    dic_list = [[NSDictionary alloc]initWithObjectsAndKeys:listdata1,@"KFC",listdata2,@"傣妹",listdata3,@"必胜客", nil];
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
