//
//  LoginVC.m
//  AFNetworking
//
//  Created by JGW on 2020/9/16.
//

#import "DefViewController.h"
#import "UIScrollView+MJRefresh.h"
#import "MJRefreshNormalHeader.h"

@interface DefViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation DefViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  UITableView *tableView = [[UITableView alloc] init];
  tableView.delegate = self;
  tableView.dataSource = self;
  tableView.tableFooterView = [UIView new];
  tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
  [self.view addSubview:tableView];
  [tableView mas_makeConstraints:^(MASConstraintMaker *make) {
    make.edges.equalTo(self.view);
  }];
  [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"testCell"];
  __weak UITableView *tableViewWeak = tableView;
  tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
    NSLog(@"MJRefreshNormalHeader");
    [tableViewWeak headerEndRefreshing];
  }];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"testCell"];
  cell.textLabel.text = @"下拉刷新--默认";
  return cell;
}


@end
