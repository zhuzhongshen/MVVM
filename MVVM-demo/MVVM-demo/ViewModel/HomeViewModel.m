//
//  HomeViewModel.m
//  MVVM-demo
//
//  Created by smart_small on 16/4/12.
//  Copyright © 2016年 smart_small. All rights reserved.
//

#import "HomeViewModel.h"
#import "APIClient.h"
#import "Define.h"
#import "HomeModel.h"

@implementation HomeViewModel

//处理网络获取的数据
- (void)handDataPageNum : (int )pageNum  handleDataPageSize :(int )pageSize  handleDataWithSuccess:(void (^)(NSArray *arr))success   failure:(void(^)(NSError *error))failure{
    
    [[APIClient sharedManager] netWorkGetHomePageListWithPageSize:pageSize pageNum:pageNum success:^(Response *respone) {
        
        NSLog(@".......respone.description : %@",respone.description);
        if (respone.status==kEnumServerStateSuccess) {
            NSLog(@"请求成功!");
            
            NSMutableArray *tmpArr=[NSMutableArray array];
            for (NSDictionary *subDic in (NSArray *)[respone.data valueForKey:@"results"]) {
                HomeModel *model=[[HomeModel alloc]initWithDic:subDic];
                [tmpArr addObject:model];
            }
            success(tmpArr);
        }
    } failure:^(NSError *error) {
        failure(error);
    }];
}

@end
