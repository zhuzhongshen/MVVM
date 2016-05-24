//
//  BaseModel.m
//  MVVM-demo
//
//  Created by smart_small on 16/4/13.
//  Copyright © 2016年 smart_small. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel

- (instancetype)initWithDic:(NSDictionary *)dic{
    NSError *error = nil;
    self =  [self initWithDictionary:dic error:&error];
    return self;
}

@end
