//
//  ViewController.m
//  TestProject
//
//  Created by 法大大 on 16/4/14.
//  Copyright © 2016年 fadada. All rights reserved.
//

#import "ViewController.h"

#import "NavViewController.h"
#import "AllViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *header;

@property (weak, nonatomic) IBOutlet UITextField *content;



@end

@implementation ViewController


- (void)viewDidAppear:(BOOL)animated{

    [self.content becomeFirstResponder];
    
    [super viewDidAppear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    [self.view endEditing:YES];  
}


 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 
     
     if ([segue.identifier isEqualToString:@"navpush"]) {
         
         NavViewController * vc = (NavViewController *)segue.destinationViewController;
         
         vc.urlstr = [NSString stringWithFormat:@"%@%@",self.header.text,self.content.text];
        
         
     }
     
     if ([segue.identifier isEqualToString:@"allmoudel"]) {
         
         AllViewController * vc = (AllViewController *)segue.destinationViewController;
         
         
          vc.urlstr = [NSString stringWithFormat:@"%@%@",self.header.text,self.content.text];
     }
 
 }




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
