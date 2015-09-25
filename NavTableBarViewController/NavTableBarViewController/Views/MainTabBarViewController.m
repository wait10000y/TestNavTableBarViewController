//
//  MainTabBarViewController.m
//  NavTableBarViewController
//
//  Created by wsliang on 15/9/17.
//  Copyright (c) 2015年 wsliang. All rights reserved.
//

#import "MainTabBarViewController.h"

#import "TestViewController.h"

@interface MainTabBarViewController ()

@end

@implementation MainTabBarViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
  
  [self addViewControllers];
  
}

-(void)addViewControllers
{
  NSMutableArray *vcs = [[NSMutableArray alloc] initWithCapacity:5];
  for (int it=0; it<5; it++) {
    TestViewController *tvc = [self creatvc];
    UITabBarItem *barItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:it];
//    UITabBarItem *barItem = [[UITabBarItem alloc] initWithTitle:@"" image:nil tag:it];
    tvc.title = [NSString stringWithFormat:@"item-%d",it];
    tvc.tabBarItem = barItem;
    [vcs addObject:tvc];
  }
  self.viewControllers = [NSArray arrayWithArray:vcs];
}



-(TestViewController*)creatvc
{
  TestViewController *tvc = [[TestViewController alloc] initWithNibName:@"TestViewController" bundle:nil];
  return tvc;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
