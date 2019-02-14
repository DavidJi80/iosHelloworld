//
//  SampleProtocol.m
//  iosHelloworld
//
//  Created by 季舟 on 2019/2/14.
//  Copyright © 2019 季舟. All rights reserved.
//

#import "SampleProtocol.h"

@implementation SampleProtocol

-(void)startSampleProcess{
    [NSTimer scheduledTimerWithTimeInterval:3.0 target:self.delegate selector:@selector(processCompleted) userInfo:nil repeats:NO];
}

@end
