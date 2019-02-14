//
//  ViewController.h
//  iosHelloworld
//
//  Created by 季舟 on 2019/2/12.
//  Copyright © 2019 季舟. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SampleProtocol.h"

@interface ViewController : UIViewController<SampleProtocolDelegate>{
    
    IBOutlet UILabel *myTitleLabel;
}

- (IBAction)setTitleLabel:(id)sender;

@end

