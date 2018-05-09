//
//  XKAlertController.m
//  XKAlertController
//
//  Created by Allen、 LAS on 2018/5/9.
//  Copyright © 2018年 重楼. All rights reserved.
//

#import "XKAlertController.h"

@interface XKAlertController ()

@end

@implementation XKAlertController

//弹窗提示(iOS8.0之后)
+ (XKAlertController*)xk_AlertController:(NSString*)title
                                     msg:(NSString*)msg
                          preferredStyle:(UIAlertControllerStyle)preferredStyle
                            actionTitles:(NSArray<NSString*>*)actionTitles
                            actionStyles:(NSArray<NSNumber*>*)actionStyles
                            handlerBlock:(void (^)(NSInteger))handlerBlock{
    
    XKAlertController * alertController = [XKAlertController alertControllerWithTitle:title
                                                                             message:msg
                                                                      preferredStyle:preferredStyle];
    
    [actionTitles enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        NSNumber * styleNum = idx < actionStyles.count ? actionStyles[idx] : @0;
        
        UIAlertAction * action = [UIAlertAction actionWithTitle:obj style:styleNum.integerValue handler:^(UIAlertAction * _Nonnull action) {
            
            if (handlerBlock) handlerBlock(idx);
            
        }];
        [alertController addAction:action];
    }];
    
    return alertController;
}


@end
