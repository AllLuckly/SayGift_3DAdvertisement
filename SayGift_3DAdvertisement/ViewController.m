//
//  ViewController.m
//  SayGift_3DAdvertisement
//
//  Created by chenlei_mac on 15/10/24.
//  Copyright © 2015年 Bison. All rights reserved.
//

#import "ViewController.h"
#import "SayGift_3DBanner_View.h"


@interface ViewController ()<ClickImgDelegate>
{
    UIImageView *_imageView;
    int _currentIndex;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SayGift_3DBanner_View *Banner_View = [[SayGift_3DBanner_View alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 180)];
    Banner_View.delegate = self;
    [Banner_View show3DBannerView];
    [self.view addSubview:Banner_View];

}
//点击了第几张图片
- (void)ClickImg:(int)index{
    NSLog(@"点击了第%d张",index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
