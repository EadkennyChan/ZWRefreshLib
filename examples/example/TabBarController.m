//
//  FiiTabBarController.m
//  FiiMS
//
//  Created by JGW on 2020/9/15.
//  Copyright © 2020 czw. All rights reserved.
//

#import "TabBarController.h"

@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  NSArray *arrVCNames = @[@"ViewController", @"StaticViewController", @"DefViewController", @"MJExampleViewController"];
  NSArray *arrTitles = @[@"首页",@"交易",@"商城", @"社区",@"我的"];
  NSArray *arrIconNames = @[@"tab_home",@"icon_setting",@"icon_shopmall",@"second",@"first"];
  NSArray *arrSelectedIconNames = @[@"tab_home_active",@"icon_setting_selected",@"icon_shopmall_active" ,@"tab3_active",@"tab4_active"];
  NSInteger n = 0;
  for (NSString *vcName in arrVCNames) {
    [self addChildVC:vcName tabBarTitle:arrTitles[n] tabBarNormalImageName:arrIconNames[n] tabBarSelectedImageName:arrSelectedIconNames[n]];
    n++;
  }
}

- (void)addChildVC:(NSString *)vcClassName tabBarTitle:(NSString*)tabBarTitle tabBarNormalImageName:(NSString*)tabBarNormalImageName tabBarSelectedImageName:(NSString*)tabBarSelectedImageName {
  Class class = NSClassFromString(vcClassName);
  UIViewController * vc = [[class alloc] init];
  UINavigationController * nav = [[RTRootNavigationController alloc] initWithRootViewController:vc];
  nav.tabBarItem.title = tabBarTitle;
  nav.tabBarItem.image = [[UIImage imageNamed:tabBarNormalImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
  nav.tabBarItem.selectedImage = [[UIImage imageNamed:tabBarSelectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
  [self addChildViewController:nav];
}

@end
