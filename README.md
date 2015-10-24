# SayGift_3DAdvertisement

##技术交流群：511040024

导入头文件`#import "SayGift_3DBanner_View.h"`

把`SayGift_3DBanner_View`文件拉进自己的工程

###ps
    由于用的是私有api上架的时候有被拒的风险哦

```    
- (void)viewDidLoad {
    [super viewDidLoad];
    SayGift_3DBanner_View *Banner_View = [[SayGift_3DBanner_View alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 180)];
    [Banner_View show3DBannerView];
    [self.view addSubview:Banner_View];

}
 ```
 
 ![(SayGift_3DAdvertisement)](https://github.com/AllLuckly/SayGift_3DAdvertisement/blob/master/3D.gif?raw=true)
