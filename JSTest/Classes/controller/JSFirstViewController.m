//
//  JSFirstViewController.m
//  JSXibDemo
//
//  Created by weiwei on 2017/10/27.
//

#import "JSFirstViewController.h"
#import "JSNextViewController.h"
//获取对应Class的Bundle路径
#define JSBundleForClass(Class) [NSBundle bundleForClass:Class]
//获取对应Bundle的Xib对象，Class为对应Bundle的-Class
#define InitXibClass(Class) [[Class alloc] initWithNibName:NSStringFromClass(Class) bundle:JSBundleForClass(Class)]
#define JSImageName(imageName) [UIImage imageNamed:imageName inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil]
@interface JSFirstViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *headerImageView;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;

@end

@implementation JSFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"测试";
    

    [self.headerImageView setImage:JSImageName(@"boy.jpg")];
    // Do any additional setup after loading the view from its nib.
    
    UIImageView * exampleImageView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 300, 100, 100)];
    exampleImageView.image = JSImageName(@"btn_login_weixin");
    exampleImageView.backgroundColor = [UIColor redColor];
    [self.view addSubview:exampleImageView];
}
- (IBAction)push:(id)sender {
    JSNextViewController * next = InitXibClass([JSNextViewController class]);
    [self.navigationController pushViewController:next animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
