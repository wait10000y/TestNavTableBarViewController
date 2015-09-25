//
//  BaseViewController.m
//  NavTableBarViewController
//
//  Created by wsliang on 15/9/18.
//  Copyright (c) 2015年 wsliang. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController


- (void)viewDidLoad
{
  [super viewDidLoad];
  
  self.title = [NSString stringWithFormat:@"item%d",self.tabBarItem.tag];
  UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(68, 68, 120, 60)];
  textLabel.text = self.title;
  [self.view addSubview:textLabel];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
