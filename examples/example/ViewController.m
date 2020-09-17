//
//  ViewController.m
//  example
//
//  Created by JGW on 2020/9/17.
//

#import "ViewController.h"
#import "UIScrollView+MJRefresh.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

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
  [tableView addHeaderWithCallback:nil];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"testCell"];
  cell.textLabel.text = @"下拉看看";
  return cell;
}


@end
