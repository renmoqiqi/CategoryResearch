//
//  ViewController.m
//  Category
//
//  Created by penghe on 2018/8/1.
//  Copyright © 2018年 WondersGroup. All rights reserved.
//

#import "ViewController.h"

#import "ViewController+TestTowCategory.h"

#import "ViewController+TestOneCategory.h"

#import <objc/runtime.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self testTowMethod];

    [self testOneMethod];
    
    self.testArray = @[@"ss"];
    NSLog(@"%@",self.testArray);
    

    [self View_overTestMethod];
    [self callOriginalMethod];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (void)load
{
    NSLog(@"%@",@"load in ViewController");
}

- (void)callOriginalMethod
{
    Class currentClass = [self class];
    UIViewController *my = self;
    
    if (currentClass) {
        unsigned int methodCount;
        Method *methodList = class_copyMethodList(currentClass, &methodCount);
        IMP lastImp = NULL;
        SEL lastSel = NULL;
        for (NSInteger i = 0; i < methodCount; i++) {
            Method method = methodList[i];
            NSString *methodName = [NSString stringWithCString:sel_getName(method_getName(method))
                                                      encoding:NSUTF8StringEncoding];
            NSLog(@"%@",methodName);
            if ([@"View_overTestMethod" isEqualToString:methodName]) {
                lastImp = method_getImplementation(method);
                lastSel = method_getName(method);
            }
        }
        typedef void (*fn)(id,SEL);
        
        if (lastImp != NULL) {
            fn f = (fn)lastImp;
            f(my,lastSel);
        }
        free(methodList);
    }
}

- (void)View_overTestMethod
{
   
    NSLog(@"View_overTestMethod");
}

@end
