//
//  ViewController+TestOneCategory.m
//  Category
//
//  Created by penghe on 2018/8/1.
//  Copyright © 2018年 WondersGroup. All rights reserved.
//

#import "ViewController+TestOneCategory.h"
#import <objc/runtime.h>

//static char const * const KTestArray = "testArray";

@implementation ViewController (TestOneCategory)

- (void)setTestArray:(NSArray *)testArray
{
//    objc_setAssociatedObject(self, KTestArray, testArray, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, @selector(testArray), testArray, OBJC_ASSOCIATION_RETAIN_NONATOMIC);

}

- (NSArray *)testArray
{
   return objc_getAssociatedObject(self, @selector(testArray));

}

+ (void)load
{
    NSLog(@"%@",@"load in TestOneCategory");
}

- (void)testOneMethod
{
    NSLog(@"testOneMethod");
}

@end
