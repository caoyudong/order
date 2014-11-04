//
//  SelectViewController.m
//  Order
//
//  Created by cyd on 14-10-21.
//  Copyright (c) 2014年 cyd. All rights reserved.
//

#import "SelectListController.h"

@interface SelectListController ()

@end

@implementation SelectListController
@synthesize arraypeoplelist;
@synthesize arraylocaldata;
- (void)viewDidLoad {
    SelectListModel *selectlistmodel=[SelectListModel new];
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    m_selectTableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen]bounds].size.width, [[UIScreen mainScreen]bounds].size.height) style:UITableViewStylePlain];
    m_selectTableView.delegate = self;
    m_selectTableView.dataSource = self;
    arraylocaldata=[NSMutableArray arrayWithCapacity:0];
    arraypeoplelist = [NSMutableArray arrayWithCapacity:0];
    arraylocaldata = [selectlistmodel readData];
    arraypeoplelist = [selectlistmodel wdOrder];
    [self.view addSubview:m_selectTableView];
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if(section==0){

        return (self.arraylocaldata.count);
    }
    if (section==1) {
        return  arraypeoplelist.count;
    }
    return 0;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *titleyd=[NSString stringWithFormat:@"%ld",7-(arraypeoplelist.count)];
     NSString *titlewd=[NSString stringWithFormat:@"%ld",[arraypeoplelist count]];
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
    NSString *identify = [NSString stringWithFormat:@"cell%ld",indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
    }
    
    UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(10, 10, 85, 20)];
    [cell addSubview:label1];
       
    if (indexPath.section == 0) {
        
        UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(10, 50, 85, 20)];
        [cell addSubview:label2];
        UILabel *label3=[[UILabel alloc]initWithFrame:CGRectMake(70, 50, 85, 20)];
        [cell addSubview:label3];
        UILabel *label4=[[UILabel alloc]initWithFrame:CGRectMake(180, 30, 85, 20)];
        [cell addSubview:label4];
        
        label1.text=[[arraylocaldata objectAtIndex:indexPath.row] objectForKey:@"1"];
        label2.text=[[arraylocaldata objectAtIndex:indexPath.row] objectForKey:@"2"];
        
        label3.text=[[arraylocaldata objectAtIndex:indexPath.row] objectForKey:@"3"];
        label4.text=[[arraylocaldata objectAtIndex:indexPath.row] objectForKey:@"4"];
        NSString *a=label4.text;
        int b=[[a substringWithRange:NSMakeRange(1, 2)]intValue];
        
        if(b>42)   label4.textColor=[UIColor redColor];
        


    }
    else if(indexPath.section == 1)
        label1.text=[self.arraypeoplelist objectAtIndex:indexPath.row];
        
    
//    }
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
