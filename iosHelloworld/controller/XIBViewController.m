//
//  XIBViewController.m
//  iosHelloworld
//
//  Created by 季舟 on 2019/2/19.
//  Copyright © 2019 季舟. All rights reserved.
//

#import "XIBViewController.h"

@interface XIBViewController ()

@end

@implementation XIBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)goStoryboards:(id)sender {
    UIStoryboard * sb=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController * vc =[sb instantiateViewControllerWithIdentifier:@"CodeViewController"];
    [self presentViewController:vc animated:YES completion:nil];
}


@end
