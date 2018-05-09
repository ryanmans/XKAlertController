//
//  XKAlertView.m
//  XKAlertController
//
//  Created by Allen、 LAS on 2018/5/9.
//  Copyright © 2018年 重楼. All rights reserved.
//

#import "XKAlertView.h"

@interface XKAlertView()
@property (nonatomic,copy)void(^handlerBlock)(NSInteger index);
@end

@implementation XKAlertView

- (instancetype)initWithTitle:(NSString *)title msg:(NSString *)msg cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSArray<NSString *> *)otherButtonTitles handlerBlock:(void (^)(NSInteger))handlerBlock{
    
     self = [super initWithTitle:title message:msg delegate:self cancelButtonTitle:cancelButtonTitle otherButtonTitles:nil, nil];
    
    if (self) {
        
        self.handlerBlock = handlerBlock;
        
        [otherButtonTitles enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            
            [self addButtonWithTitle:obj];
        }];

    }
    return self;
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if (self.handlerBlock) self.handlerBlock(buttonIndex);
    
    [alertView removeFromSuperview];
}
@end
