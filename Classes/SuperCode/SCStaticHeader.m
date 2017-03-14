//
//  SCStaticHeader.m
//  ZWUtilityKit-demo
//
//  Created by EadkennyChan on 16/12/12.
//  Copyright © 2016年 EadkennyChan. All rights reserved.
//

#import "SCStaticHeader.h"

@interface SCStaticHeader ()

@property (weak, nonatomic)UIImageView *logoImageView;

@end

@implementation SCStaticHeader

- (void)prepare
{
    [super prepare];
    
    NSString *strImageName = [[NSBundle mj_refreshBundle] pathForResource:@"logo@2x" ofType:@"png"];
    UIImage *image = [UIImage imageNamed:strImageName];
    
    self.mj_h = image.size.height;
    // 1.创建控件
    UIImageView *logoImgV = [[UIImageView alloc] initWithImage:image];
    logoImgV.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    [self addSubview:_logoImageView = logoImgV];
}

- (void)setState:(MJRefreshState)state
{
}

@end
