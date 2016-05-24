//
//  APIClient.m
//  MVVM-demo
//
//  Created by smart_small on 16/4/12.
//  Copyright © 2016年 smart_small. All rights reserved.
//

#import "APIClient.h"
#import "NetTool.h"
#import "Urls.h"

@implementation APIClient

//单例，每次只允许一次网络请求
+ (APIClient *)sharedManager{
    static APIClient *manager=nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        //一次只允许一个请求
        if (manager==nil) {
            manager=[[APIClient alloc]init];
        }
    });
    return manager;
}

//获取首页list数据
- (void)netWorkGetHomePageListWithPageSize:(NSInteger)pageSize pageNum:(NSInteger)pageNum success:(void (^)(Response *respone))success failure:(void(^)(NSError *error))failure{
    
    NSDictionary *parmDic=[NSDictionary dictionaryWithObjectsAndKeys:@(pageSize),@"limit",@(pageNum),@"skip", nil];
    
    [[NetTool shareManager] httpGetRequest:kApi_Get_HomePageList withParameter:parmDic success:^(Response *response) {
        success(response);
    } failure:^(NSError *error) {
        failure(error);
    }];
}


@end
