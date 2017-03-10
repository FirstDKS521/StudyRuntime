//
//  UIViewController+SYTool.m
//  StudyRuntime
//
//  Created by aDu on 2017/3/10.
//  Copyright © 2017年 DuKaiShun. All rights reserved.
//

#import "UIViewController+SYTool.h"
#import <objc/runtime.h>
#import "RuntimeKit.h"

@implementation UIViewController (SYTool)

+ (void)load
{
    NSLog(@"执行了");
    [RuntimeKit methodSwap:[self class] firstMethod:@selector(viewWillAppear:) secondMethod:@selector(sy_viewWillAppear:)];
    [RuntimeKit methodSwap:[self class] firstMethod:@selector(viewWillDisappear:) secondMethod:@selector(sy_viewWillDisappear:)];
//    [RuntimeKit addMethod:[self class] method:@selector(viewWillAppear:) method:@selector(sy_viewWillAppear:)];
//    
//    [RuntimeKit addMethod:[self class] method:@selector(viewWillDisappear:) method:@selector(sy_viewWillDisappear:)];
}

- (void)sy_viewWillAppear:(BOOL)animated
{
    [self sy_viewWillAppear:animated];
    NSLog(@"%@UUU", [RuntimeKit fetchClassName:[self class]]);
}

- (void)sy_viewWillDisappear:(BOOL)animated
{
    [self sy_viewWillDisappear:animated];
    NSLog(@"%@^^^", [RuntimeKit fetchClassName:[self class]]);
}


//+ (void)load
//{
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        Class class = [self class];
//        
//        SEL originSelector = @selector(viewWillAppear:);
//        SEL swizzledSelector = @selector(new_viewWillAppear:);
//        
//        Method originMethod = class_getInstanceMethod(class, originSelector);
//        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
//        
//        BOOL didAddMethod = class_addMethod(class,
//                                            originSelector,
//                                            method_getImplementation(swizzledMethod),
//                                            method_getTypeEncoding(swizzledMethod));
//        if (didAddMethod) {
//            class_replaceMethod(class,
//                                swizzledSelector,
//                                method_getImplementation(originMethod),
//                                method_getTypeEncoding(originMethod));
//        } else {
//            method_exchangeImplementations(originMethod, swizzledMethod);
//        }
//    });
//}
//
//- (void)new_viewWillAppear:(BOOL)animated
//{
//    [self new_viewWillAppear:animated];
//    
//    NSLog(@"《》《》《》《》");
//}

@end
