//
//  ViewController+TestTowCategory.m
//  Category
//
//  Created by penghe on 2018/8/1.
//  Copyright © 2018年 WondersGroup. All rights reserved.
//

#import "ViewController+TestTowCategory.h"

@implementation ViewController (TestTowCategory)

+ (void)load
{
    NSLog(@"%@",@"load in TestTowCategory");
}

- (void)testTowMethod
{
    NSLog(@"testTowMethod");

}

//把主类的方法覆盖掉了
- (void)View_overTestMethod
{
    NSLog(@"View_overTestMethodTestTowCategory");
}
@end
