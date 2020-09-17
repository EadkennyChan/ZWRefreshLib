//  代码地址: https://github.com/CoderMJLee/MJRefresh
//  代码地址: http://code4app.com/ios/%E5%BF%AB%E9%80%9F%E9%9B%86%E6%88%90%E4%B8%8B%E6%8B%89%E4%B8%8A%E6%8B%89%E5%88%B7%E6%96%B0/52326ce26803fabc46000000
//  UIScrollView+MJRefresh.h
//  MJRefreshExample
//
//  Created by MJ Lee on 15/3/4.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//  给ScrollView增加下拉刷新、上拉刷新、 左滑刷新的功能

#import <UIKit/UIKit.h>
#import "MJRefreshConst.h"

@class MJRefreshHeader, MJRefreshFooter, MJRefreshTrailer;

NS_ASSUME_NONNULL_BEGIN

@interface UIScrollView (MJRefresh)
/** 下拉刷新控件 */
@property (strong, nonatomic, nullable) MJRefreshHeader *mj_header;
@property (strong, nonatomic, nullable) MJRefreshHeader *header MJRefreshDeprecated("使用mj_header");
/** 上拉刷新控件 */
@property (strong, nonatomic, nullable) MJRefreshFooter *mj_footer;
@property (strong, nonatomic, nullable) MJRefreshFooter *footer MJRefreshDeprecated("使用mj_footer");

/** 左滑刷新控件 */
@property (strong, nonatomic, nullable) MJRefreshTrailer *mj_trailer;

#pragma mark - other
- (NSInteger)mj_totalDataCount;

@end

#pragma mark - 添加方法

@interface UIScrollView (AddRefresh)
/**
 *  添加一个下拉刷新头部控件
 *
 *  @param target 目标
 *  @param action 回调方法
 */
- (void)addHeaderWithTarget:(id)target action:(SEL)action;

/**
 *  添加一个下拉刷新头部控件
 *
 *  @param callback 回调
 */
- (void)addHeaderWithCallback:(void (^)(void))callback;

/**
 *  主动让下拉刷新头部控件进入刷新状态
 */
- (void)headerBeginRefreshing;

/**
 *  让下拉刷新头部控件停止刷新状态
 */
- (void)headerEndRefreshing;

#pragma mark footer

/**
 *  添加一个上拉刷新尾部控件
 *
 *  @param target 目标
 *  @param action 回调方法
 */
- (void)addFooterWithTarget:(id)target action:(SEL)action;

- (void)addFooterWithCallback:(void (^)(void))callback;

/**
 *  移除上拉刷新尾部控件
 */
- (void)removeFooter;

/**
 *  主动让上拉刷新尾部控件进入刷新状态
 */
- (void)footerBeginRefreshing;

/**
 *  让上拉刷新尾部控件停止刷新状态
 */
- (void)footerEndRefreshing;
/**
 *  让上拉刷新尾部控件不再可以刷新
 */
- (void)footerFinishedRefreshing;

@end

NS_ASSUME_NONNULL_END
