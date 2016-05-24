//
//  HomeDetailViewController.h
//  MVVM-demo
//
//  Created by smart_small on 16/4/13.
//  Copyright © 2016年 smart_small. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeDetailViewController : UIViewController

@property (nonatomic,strong) NSString *navTitle;//导航栏标题
@property (nonatomic,strong) NSString *urlStr;//用webView加载详情

@end
