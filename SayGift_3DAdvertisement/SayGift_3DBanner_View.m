//
//  SayGift_3DBanner_View.m
//  SayGift_3DAdvertisement
//
//  Created by chenlei_mac on 15/10/24.
//  Copyright © 2015年 Bison. All rights reserved.
//

#import "SayGift_3DBanner_View.h"


@implementation SayGift_3DBanner_View

- (instancetype)init
{
    self = [super init];
    if (self) {
//        self.frame = CGRectMake(0, 0, MainScreenW, 180);
//        _imageArr = [NSArray array];
    }
    return self;
}

- (void)show3DBannerView{
    
    _imageArr = @[@"0.jpg",@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg"];
    //定义图片控件
    _imageView=[[UIImageView alloc]init];
    _imageView.frame= CGRectMake(0, 0, MainScreenW, 180);
    _imageView.contentMode=UIViewContentModeScaleAspectFit;
    _imageView.image=[UIImage imageNamed:_imageArr[0]];//默认图片
    [self addSubview:_imageView];
    
    
    
    //添加手势
    UISwipeGestureRecognizer *leftSwipeGesture=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(leftSwipe:)];
    leftSwipeGesture.direction=UISwipeGestureRecognizerDirectionLeft;
    [self addGestureRecognizer:leftSwipeGesture];
    
    UISwipeGestureRecognizer *rightSwipeGesture=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(rightSwipe:)];
    rightSwipeGesture.direction=UISwipeGestureRecognizerDirectionRight;
    [self addGestureRecognizer:rightSwipeGesture];
}

#pragma mark 向左滑动浏览下一张图片
-(void)leftSwipe:(UISwipeGestureRecognizer *)gesture{
    [self transitionAnimation:YES];
}

#pragma mark 向右滑动浏览上一张图片
-(void)rightSwipe:(UISwipeGestureRecognizer *)gesture{
    [self transitionAnimation:NO];
}

#pragma mark 转场动画
-(void)transitionAnimation:(BOOL)isNext{
    //1.创建转场动画对象
    CATransition *transition=[[CATransition alloc]init];
    
    //2.设置动画类型,注意对于苹果官方没公开的动画类型只能使用字符串，并没有对应的常量定义
    transition.type=@"cube";
    
    //设置子类型
    if (isNext) {
        transition.subtype=kCATransitionFromRight;
    }else{
        transition.subtype=kCATransitionFromLeft;
    }
    //设置动画时常
    transition.duration=1.0f;
    
    //3.设置转场后的新视图添加转场动画
    _imageView.image=[self getImage:isNext];
    [_imageView.layer addAnimation:transition forKey:@"KCTransitionAnimation"];
}

#pragma mark 取得当前图片
-(UIImage *)getImage:(BOOL)isNext{
    if (isNext) {
        _currentIndex=(_currentIndex+1)%_imageArr.count;
    }else{
        _currentIndex=(_currentIndex-1+_imageArr.count)%(int)_imageArr.count;
    }
    NSString *imageName = _imageArr[_currentIndex];
    return [UIImage imageNamed:imageName];
}



@end
