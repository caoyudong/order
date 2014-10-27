//
//  SecondViewController.m
//  Order
//
//  Created by cyd on 14-10-16.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize listdata;
@synthesize price;
@synthesize filename;
@synthesize muarry;
@synthesize button_ok;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"订餐";
    self.view.backgroundColor = [UIColor whiteColor];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(showvalue1:) name:@"people" object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(showvalue2:) name:@"restaurant" object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(showvalue3:) name:@"package" object:nil];
    
//    uitableview=[[UITableView alloc]initWithFrame:CGRectMake(0, 0,[[UIScreen mainScreen] bounds].size.width,[[UIScreen mainScreen] bounds].size.height) style:UITableViewStylePlain];
//    
//    [self.view addSubview:uitableview];
    [self createLabel1:CGRectMake(10, 70, 60, 30) :@"人:" :[UIColor blackColor]];
//    [self.showvalue]
    [self createLabel1:CGRectMake(10, 220, 60, 30) :@"餐厅:" :[UIColor blackColor]];
    [self createLabel1:CGRectMake(10, 370, 60, 30) :@"套餐:" :[UIColor blackColor]];
    m_labelpeople = [self createLabel2:CGRectMake(10, 110, 350, 30) :[UIColor lightGrayColor]];
    m_labelrestaurant=[self createLabel2:CGRectMake(10, 260, 350, 30) :[UIColor lightGrayColor]];
    m_labelpackage=[self createLabel2:CGRectMake(10, 410, 350, 30) :[UIColor lightGrayColor]];
    UIButton *button_people=[self createbuttion:CGRectMake(10, 170, 350, 30) :@"选人"];
    UIButton *button_restaurant=[self createbuttion:CGRectMake(10, 320, 350, 30) :@"选餐厅"];
    UIButton *button_package=[self createbuttion:CGRectMake(10, 470, 350, 30) :@"选套餐"];
    button_ok=[self createbuttion:CGRectMake(10, 520, 350, 30) :@"确认"];
    [button_people addTarget:self action:@selector(click_people:) forControlEvents:UIControlEventTouchUpInside];
    [button_restaurant addTarget:self action:@selector(click_restaurant:) forControlEvents:UIControlEventTouchUpInside];
    [button_package addTarget:self action:@selector(click_package:) forControlEvents:UIControlEventTouchUpInside];
    [button_ok addTarget:self action:@selector(click_ok:) forControlEvents:UIControlEventTouchUpInside];
    
    //lable1.text=@"人";
    //lable1.textColor = [UIColor blackColor];
    //UILabel *lable2=[[UILabel alloc]initWithFrame:CGRectMake(10, 120, 60, 30)];
//lable1.backgroundColor = [UIColor redColor];
   // [self.view addSubview:lable1];
    
   
}

-(void) showvalue1:(NSNotification *)notification
{
    NSString *text=notification.object;
    m_labelpeople.text=text;
     
}

-(void) showvalue2:(NSNotification *)notification
{
    NSString *text=notification.object;
    m_labelrestaurant.text=text;
    
}

-(void) showvalue3:(NSNotification *)notification
{
    NSString *text=[notification.object objectForKey:@"product"];
    price=[notification.object objectForKey:@"price"];
    m_labelpackage.text=text;
    
}

- (UILabel *)createLabel1 :(CGRect)frame :(NSString *)strText :(UIColor *)labelColor
{
    UILabel *lable=[[UILabel alloc]initWithFrame:frame];
    lable.text=strText;
    lable.textColor = labelColor;
    [self.view addSubview:lable];
    return lable;
}

- (UILabel *)createLabel2 :(CGRect)frame :(UIColor *)lableColor
{
    UILabel *lable=[[UILabel alloc]initWithFrame:frame];
    lable.backgroundColor=lableColor;
    [self.view addSubview:lable];
    return lable;
}

- (UIButton *)createbuttion :(CGRect)frame :(NSString *)strTitle
{
    UIButton *button=[[UIButton alloc]initWithFrame:frame];
    [button setTitle:strTitle forState:UIControlStateNormal];
    button.backgroundColor= [UIColor redColor];
    [self.view addSubview:button];
    return button;
}

-(void)click_people:(id)sender{
    ThirdViewController1 *thirdviewcontroller1=[ThirdViewController1 new];
    [self.navigationController pushViewController:thirdviewcontroller1 animated:true];
}

-(void)click_restaurant:(id)sender{
    ThirdViewController2 *thirdviewcontroller2=[ThirdViewController2 new];
    [self.navigationController pushViewController:thirdviewcontroller2 animated:true];
}


-(void)click_package:(id)sender{
    ThirdViewController3 *thirdviewcontroller3=[[ThirdViewController3 alloc]init :m_labelrestaurant.text];
    [self.navigationController pushViewController:thirdviewcontroller3 animated:true];
}

-(void)click_ok:(id)sender{
    
    if (m_labelpeople.text == nil || m_labelrestaurant.text == nil || m_labelpackage.text == nil)
        return;
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
//    NSMutableArray *temp=[[NSMutableArray alloc]initWithContentsOfFile:appDelegate.filename];
    NSMutableArray *temp=[NSKeyedUnarchiver unarchiveObjectWithFile:appDelegate.filename];
    if (temp == nil) {
        temp = [[NSMutableArray alloc]initWithCapacity:0];
    }
    
//    NSDictionary *dic=[[NSDictionary alloc] initWithObjectsAndKeys:m_labelpeople.text,@"1",m_labelrestaurant,@"2",m_labelpackage.text,@"3",price,@"4", nil];
    NSDictionary *dic = [[NSDictionary alloc]initWithObjectsAndKeys:m_labelpeople.text,@"1",m_labelrestaurant.text,@"2",m_labelpackage.text,@"3",price,@"4", nil];
    [temp addObject:dic];
    [NSKeyedArchiver archiveRootObject:temp toFile:appDelegate.filename];
    
    
    m_labelpeople.text=nil;
    m_labelrestaurant.text=nil;
    m_labelpackage.text=nil;
    
    
    
//    BOOL success = [temp writeToFile:appDelegate.filename atomically:YES];
//    if (!success) {
//        NSLog(@"writeToFile failed");
//    }

//    SelectViewController *selectviewcontroller=[SelectViewController new];
//    [self.navigationController pushViewController:selectviewcontroller animated:true];
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
