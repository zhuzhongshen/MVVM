//
//  HomeTableView.m
//  MVVM-demo
//
//  Created by smart_small on 16/4/12.
//  Copyright © 2016年 smart_small. All rights reserved.
//

#import "HomeTableView.h"
#import "Define.h"

@implementation HomeTableView

-(instancetype)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:kAppMainBgColor];
    }
    return self;
}

@end
