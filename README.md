# SayGift_3DAdvertisement

> [博主app上线啦，快点此来围观吧](https://itunes.apple.com/us/app/it-blog-zi-xueios-kai-fa-jin/id1067787090?l=zh&ls=1&mt=8)<br>


##技术交流群：534926022（免费）   511040024(0.8/人付费)
[作者博客](http://allluckly.cn/)

导入头文件`#import "SayGift_3DBanner_View.h"`

把`SayGift_3DBanner_View`文件拉进自己的工程

实现`ClickImgDelegate`代理

###ps
    由于用的是私有api上架的时候有被拒的风险哦，不过我已经想到了一个方法貌似可以绕过苹果的检测上传，感觉还可以实行的样子

```    
- (void)viewDidLoad {
    [super viewDidLoad];
    SayGift_3DBanner_View *Banner_View = [[SayGift_3DBanner_View alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 180)];
    Banner_View.delegate = self;
    [Banner_View show3DBannerView];
    [self.view addSubview:Banner_View];


}
 ```

```
//点击了第几张图片
- (void)ClickImg:(int)index{
NSLog(@"点击了第%d张",index);
}
```
 
 ![(SayGift_3DAdvertisement)](https://github.com/AllLuckly/SayGift_3DAdvertisement/blob/master/3D.gif?raw=true)
