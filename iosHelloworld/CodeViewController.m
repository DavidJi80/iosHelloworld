//
//  CodeViewController.m
//  iosHelloworld
//
//  Created by 季舟 on 2019/2/14.
//  Copyright © 2019 季舟. All rights reserved.
//

#import "CodeViewController.h"

@interface CodeViewController ()

@end

@implementation CodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString * labalText=[NSString stringWithFormat:@"name is %@,age is %d",_name,_age];
    UILabel * label = [[UILabel alloc]init];
    label.text=labalText;
    [label sizeToFit];
    label.center =self.view.center;
    [self.view addSubview:label];
}




@end
