//
//  OnlyCodeViewController.m
//  iosHelloworld
//
//  Created by 季舟 on 2019/2/19.
//  Copyright © 2019 季舟. All rights reserved.
//

#import "OnlyCodeViewController.h"

@interface OnlyCodeViewController ()

@property(nonatomic,strong) UILabel * phoneLabel;
@property(nonatomic,strong) UIButton * enterBtn;

@end

@implementation OnlyCodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置背景色为白色
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    _phoneLabel=[[UILabel alloc]init];
    _phoneLabel.frame=CGRectMake(30, 130, 300, 20);
    _phoneLabel.text=@"I am Only Code";
    _phoneLabel.textColor=[UIColor redColor];
    _phoneLabel.font=[UIFont systemFontOfSize:(17)];
    
    _enterBtn=[UIButton new];
    _enterBtn.backgroundColor=[UIColor greenColor];
    _enterBtn.frame=CGRectMake(30, 255, 315, 45);
    _enterBtn.titleLabel.font=[UIFont systemFontOfSize:20];
    _enterBtn.titleLabel.textColor=[UIColor whiteColor];
    [_enterBtn setTitle:@"Go Stryboards" forState:UIControlStateNormal];
    [_enterBtn.layer setCornerRadius:10.0];
    [_enterBtn addTarget:self action:@selector(goStoryboards:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.phoneLabel];
    [self.view addSubview:self.enterBtn];
}

- (IBAction)goStoryboards:(id)sender {
    UIStoryboard * sb=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController * vc =[sb instantiateViewControllerWithIdentifier:@"CodeViewController"];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
