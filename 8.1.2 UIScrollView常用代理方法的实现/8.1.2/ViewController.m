//
//  ViewController.m
//  8.1.2
//
//  Created by 李维佳 on 2017/3/31.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建一个UIImageView对象
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image"]];
    //创建一个与屏幕等宽等高的滚动视图
    UIScrollView *myScrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    //设置滚动区域的大小
    myScrollView.contentSize = imageView.bounds.size;
    //指定其代理对象
    myScrollView.delegate = self;
    //添加子视图
    [myScrollView addSubview:imageView];
    [self.view addSubview:myScrollView];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"滚动时,调用scrollViewDidScroll: 方法");
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    NSLog(@"即将开始滚动时,调用scrollViewWillBeginDragging: 方法");
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    NSLog(@"停止滚动时,调用scrollViewDidEndDragging: 方法");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
