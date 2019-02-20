//
//  ViewController.m
//  iosHelloworld
//
//  Created by 季舟 on 2019/2/12.
//  Copyright © 2019 季舟. All rights reserved.
//

#import "ViewController.h"
#import "CodeViewController.h"
#import "OnlyCodeViewController.h"
#import "XIBViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel * label = [[UILabel alloc]init];
    //这一句创建了一个静态文本控件，未指定内容、大小和位置
    label.text=@"hello world";
    //"@"的作用是把一个c风格的字符串"hello world"包装成一个NSString对象
    [label sizeToFit];
    //让静态文本的大小自适应内容
    label.center =self.view.center;
    //让静态文本居于整个视图的中央
    [self.view addSubview:label];
    //将静态文本添加到主视图中
    
    SampleProtocol *sampleProtocol=[[SampleProtocol alloc]init];
    sampleProtocol.delegate=self;
    [myTitleLabel setText:@"Processing..."];
    [sampleProtocol startSampleProcess];
}

-(void)processCompleted{
    [myTitleLabel setText:@"Process Completed"];
}


- (IBAction)setTitleLabel:(id)sender {
    [myTitleLabel setText:@"Hello,I am David Ji."];
}

- (IBAction)goAction:(id)sender {
    [self performSegueWithIdentifier:@"EasyCode" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"EasyCode"]){
        CodeViewController *receive=segue.destinationViewController;
        receive.name=@"David Ji";
        receive.age=18;
    }
}

- (IBAction)openOnlyCodeView:(id)sender {
    dispatch_async(dispatch_get_main_queue(), ^{
        OnlyCodeViewController * vc=[[OnlyCodeViewController alloc]init];
        [self presentViewController:vc animated:YES completion:nil];
    });
    
    
}

- (IBAction)openXibView:(id)sender {
    XIBViewController * vc=[[XIBViewController alloc]initWithNibName:@"XIBViewController" bundle:nil];
    [self presentViewController:vc animated:YES completion:nil];
}



@end
