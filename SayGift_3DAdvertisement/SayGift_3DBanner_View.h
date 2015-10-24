//
//  SayGift_3DBanner_View.h
//  SayGift_3DAdvertisement
//
//  Created by chenlei_mac on 15/10/24.
//  Copyright © 2015年 Bison. All rights reserved.
//

#import <UIKit/UIKit.h>

#define IMAGE_COUNT 6
#define MainScreenH [UIScreen mainScreen].bounds.size.height
#define MainScreenW [UIScreen mainScreen].bounds.size.width

@interface SayGift_3DBanner_View : UIView

@property (nonatomic, assign)int currentIndex;//当前图片的下标

@property (nonatomic, strong)UIImageView *imageView;//图片

- (void)show3DBannerView;

@end
