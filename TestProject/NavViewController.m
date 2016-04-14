//
//  NavViewController.m
//  TestProject
//
//  Created by 法大大 on 16/4/14.
//  Copyright © 2016年 fadada. All rights reserved.
//

#import "NavViewController.h"

@interface NavViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *myWebView;

@end

@implementation NavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    NSURLRequest * reauest = [NSURLRequest requestWithURL:[NSURL URLWithString:self.urlstr]];
    
    [self.myWebView loadRequest:reauest];
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
