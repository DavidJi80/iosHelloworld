//
//  SampleTableViewController.m
//  iosHelloworld
//
//  Created by 季舟 on 2019/2/18.
//  Copyright © 2019 季舟. All rights reserved.
//

#import "SampleTableViewController.h"

@interface SampleTableViewController (){
    NSArray * data;
}

@end

@implementation SampleTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    data=@[@"David",@"Ji Zhou"];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return data.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * cellIdentifier=@"nameID";
    UITableViewCell * cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    NSString * name=data[indexPath.row];
    cell.textLabel.text=name;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIAlertController * alert=[UIAlertController alertControllerWithTitle:@"MSG" message:data[indexPath.row] preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
    [self presentViewController:alert animated:true completion:nil];
}


@end
