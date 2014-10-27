//
//  SelectViewController.m
//  Order
//
//  Created by cyd on 14-10-21.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "SelectViewController.h"

@interface SelectViewController ()

@end

@implementation SelectViewController
@synthesize array;
@synthesize listdata;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    uitableview=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen]bounds].size.width, [[UIScreen mainScreen]bounds].size.height) style:UITableViewStylePlain];
    uitableview.delegate = self;
    uitableview.dataSource = self;
    array=[[NSMutableArray alloc] initWithObjects:@"汪涵",@"欧弟",@"钱枫",@"田源",@"浩二",@"小五",@"俞灏明", nil];
    listdata=[NSMutableArray arrayWithCapacity:7];
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    self.listdata = [NSKeyedUnarchiver unarchiveObjectWithFile:appDelegate.filename];
             //    listdata= [NSMutableArray arrayWithContentsOfFile:appDelegate.filename];
             //    listdata2=[NSMutableArray arrayWithCapacity:7];
             //    [listdata2 addObject:listdata];
    for(NSObject *object1 in listdata){
        NSArray *values=[(NSDictionary *)object1 allValues];
        NSString *name=values[1];
        for(NSObject *object2 in array){
            if([(NSString *)object2 isEqualToString:name]){
                [array removeObject:object2];
                break;
                
            }
        }
                }
   
    [self.view addSubview:uitableview];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if(section==0){
//        return [[listdata objectAtIndex:0]allKeys].count;
        return (self.listdata.count);
    }
    if (section==1) {
        return  array.count;
    }
    return 0;
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *titleyd=[NSString stringWithFormat:@"%d",7-(array.count)];
     NSString *titlewd=[NSString stringWithFormat:@"%d",[array count]];
    NSString *title1=@"人已定";
    NSString *title2=@"人未定";
   NSString  *string = [titleyd stringByAppendingString:title1];
       NSString  *string2 = [titlewd stringByAppendingString:title2];
    if (section == 0) {
        return string ;
    }
    else{
    return string2;
    }
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *identify = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];

    
    UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(10, 10, 85, 20)];
    [cell addSubview:label1];
       
    if (indexPath.section == 0) {
        
        UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(10, 50, 85, 20)];
        [cell addSubview:label2];
        UILabel *label3=[[UILabel alloc]initWithFrame:CGRectMake(70, 50, 85, 20)];
        [cell addSubview:label3];
        UILabel *label4=[[UILabel alloc]initWithFrame:CGRectMake(180, 30, 85, 20)];
        [cell addSubview:label4];
        
        label1.text=[[self.listdata objectAtIndex:indexPath.row] objectForKey:@"1"];
        label2.text=[[self.listdata objectAtIndex:indexPath.row] objectForKey:@"2"];
        
        label3.text=[[self.listdata objectAtIndex:indexPath.row] objectForKey:@"3"];
        label4.text=[[self.listdata objectAtIndex:indexPath.row] objectForKey:@"4"];
        NSString *a=label4.text;
        int b=[[a substringWithRange:NSMakeRange(1, 2)]intValue];
        
        if(b>25)   label4.textColor=[UIColor redColor];
            

    }
    else if(indexPath.section == 1)
        label1.text=[self.array objectAtIndex:indexPath.row];
        
    
    }
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
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
