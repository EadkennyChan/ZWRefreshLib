//
//  SCRefreshHeader.m
//  ZWUtilityKit-demo
//
//  Created by EadkennyChan on 16/12/10.
//  Copyright © 2016年 EadkennyChan. All rights reserved.
//

#import "SCRefreshHeader.h"

@implementation SCRefreshHeader

- (void)prepare
{
    [super prepare];
    
    // 设置普通状态的动画图片
    NSMutableArray *mtArrayImages = [NSMutableArray arrayWithCapacity:12];
    NSString *strImageName;
    UIImage *image;
    NSBundle *bundle = [NSBundle mj_refreshBundle];
    for (NSInteger nIndex = 0; nIndex < 13; nIndex++)
    {
        strImageName = [bundle pathForResource:[NSString stringWithFormat:@"loading%ld@2x", (long)nIndex + 1] ofType:@"png"];
        image = [UIImage imageNamed:strImageName];
        if (image)
            [mtArrayImages addObject:image];
    }
    [self setImages:@[mtArrayImages.firstObject] duration:1 forState:MJRefreshStateIdle];
    
    // 设置即将刷新状态的动画图片（一松开就会刷新的状态）
    [self setImages:@[mtArrayImages.firstObject] duration:1 forState:MJRefreshStateRefreshing];
    
    // 设置正在刷新状态的动画图片
    [self setImages:mtArrayImages duration:1.8 forState:MJRefreshStateRefreshing];
    
    self.stateLabel.font = [UIFont boldSystemFontOfSize:10];
    self.stateLabel.textColor = MJRefreshColor(170, 170, 170);
    self.stateLabel.textAlignment = NSTextAlignmentLeft;
    self.lastUpdatedTimeLabel.font = [UIFont boldSystemFontOfSize:11];
    self.lastUpdatedTimeLabel.textColor = MJRefreshColor(100, 100, 100);
    self.lastUpdatedTimeLabel.textAlignment = NSTextAlignmentLeft;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
        
    CGRect frame = self.bounds;
    frame.size.height = 11;
    frame.origin.y = self.bounds.size.height / 2 - frame.size.height - 2;
    frame.origin.x = self.bounds.size.width / 2 - 42;
    frame.size.width = self.bounds.size.width - frame.origin.x;
    self.lastUpdatedTimeLabel.frame = frame;
    
    frame.origin.y = self.bounds.size.height / 2 + 2;
    self.stateLabel.frame = frame;
    
    self.gifView.frame = self.bounds;
    self.gifView.contentMode = UIViewContentModeCenter;
}

- (void)setState:(MJRefreshState)state
{
    MJRefreshCheckState
    // 根据状态做事情
    if (state == MJRefreshStateRefreshing)
    {
        self.stateLabel.hidden = YES;
        self.lastUpdatedTimeLabel.hidden = YES;
    }
    else if (state == MJRefreshStateEndRefreshed)
    {
        self.gifView.hidden = YES;
    }
    else
    {
        self.gifView.hidden = NO;
        self.stateLabel.hidden = NO;
        self.lastUpdatedTimeLabel.hidden = NO;
    }
}

- (void)setLastUpdatedTimeKey:(NSString *)lastUpdatedTimeKey
{
    self.lastUpdatedTimeLabel.text = @"超级码，产品的超级身份证！";
}

@end
