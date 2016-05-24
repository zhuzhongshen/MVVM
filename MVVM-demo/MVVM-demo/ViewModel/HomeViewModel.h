//
//  HomeViewModel.h
//  MVVM-demo
//
//  Created by smart_small on 16/4/12.
//  Copyright © 2016年 smart_small. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HomeViewModel : NSObject

/**
 *  请求首页数据
 *
 *  @param pageNo 需要请求的数目
 *  @param pageSize  当前分页
 *  @param success  成功回调函数
 *  @param failure  失败回调函数
 */
- (void)handDataPageNum : (int)pageNum  handleDataPageSize :(int )pageSize  handleDataWithSuccess:(void (^)(NSArray *arr))success   failure:(void(^)(NSError *error))failure;

@end
