//
//  SCAutoFooter.m
//  ZWUtilityKit-demo
//
//  Created by EadkennyChan on 16/12/12.
//  Copyright © 2016年 EadkennyChan. All rights reserved.
//

#import "SCAutoFooter.h"

@implementation SCAutoFooter

- (void)prepare
{
    [super prepare];
    
    [self setTitle:@"" forState:MJRefreshStateIdle];
    [self setTitle:@"" forState:MJRefreshStateRefreshing];
    [self setTitle:@"" forState:MJRefreshStateNoMoreData];
}

- (void)scrollViewContentSizeDidChange:(NSDictionary *)change
{
    [super scrollViewContentSizeDidChange:change];
    
    // 内容的高度
    CGFloat contentHeight = self.scrollView.mj_contentH + self.ignoredScrollViewContentInsetBottom;
    // 表格的高度
    CGFloat scrollHeight = self.scrollView.mj_h - self.scrollViewOriginalInset.top - self.scrollViewOriginalInset.bottom + self.ignoredScrollViewContentInsetBottom;
    // 设置位置和尺寸
    self.mj_y = MAX(contentHeight, scrollHeight);
}

- (void)setState:(MJRefreshState)state
{
    MJRefreshCheckState
    
    if (state == MJRefreshStateNoMoreData)
    {
        self.stateLabel.text = MJRefreshAutoFooterNoMoreDataText;
    }
    else if (self.isRefreshingTitleHidden)
    {
        self.stateLabel.text = nil;
    }
}

@end
