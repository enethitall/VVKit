//
//  VVCommonManager.m
//  FBSnapshotTestCase
//
//  Created by weiwei on 2019/10/30.
//

#import "VVCommonManager.h"

@implementation VVCommonManager

+(instancetype)shareManager
{
    static VVCommonManager* manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[VVCommonManager alloc]init];
    });
    return manager;
}
-(void)test{
    NSLog(@"test success!!!");
}
@end
