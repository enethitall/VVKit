//
//  JSFirstViewController.m
//  JSXibDemo
//
//  Created by weiwei on 2017/10/27.
//

#import "JSFirstViewController.h"
#import "JSNextViewController.h"
@interface JSFirstViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *headerImageView;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;

@end

@implementation JSFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"测试";
    

    [self.headerImageView setImage:[UIImage imageNamed:@"btn_login_weixin" inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil]];
    // Do any additional setup after loading the view from its nib.
    
    UIImageView * exampleImageView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 300, 100, 100)];
    exampleImageView.image = [UIImage imageNamed:@"btn_login_qq" inBundle:[NSBundle bundleWithIdentifier:@"org.cocoapods.JSTest"] compatibleWithTraitCollection:nil];
    exampleImageView.backgroundColor = [UIColor redColor];
    [self.view addSubview:exampleImageView];
}
- (IBAction)push:(id)sender {
    JSNextViewController * next = [[JSNextViewController alloc]initWithNibName:NSStringFromClass(JSNextViewController.class) bundle:[NSBundle bundleWithIdentifier:@"org.cocoapods.JSTest"]];
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
