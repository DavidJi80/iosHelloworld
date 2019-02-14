//
//  SampleProtocol.h
//  iosHelloworld
//
//  Created by 季舟 on 2019/2/13.
//  Copyright © 2019 季舟. All rights reserved.
//

#import <Foundation/Foundation.h>

//协议定义
@protocol SampleProtocolDelegate <NSObject>
@required
- (void) processCompleted;
@end
//协议定义结束


@interface SampleProtocol : NSObject
{
    id <SampleProtocolDelegate> _delegate;
}

@property (nonatomic,strong) id delegate;

-(void)startSampleProcess;

@end
