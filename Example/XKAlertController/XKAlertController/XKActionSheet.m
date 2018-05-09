//
//  XKActionSheet.m
//  XKAlertController
//
//  Created by Allen、 LAS on 2018/5/9.
//  Copyright © 2018年 重楼. All rights reserved.
//

#import "XKActionSheet.h"

@interface XKActionSheet()
@property (nonatomic,copy)void(^handlerBlock)(NSInteger index);
@end

@implementation XKActionSheet

- (instancetype)initWithTitle:(NSString *)title cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSArray<NSString *> *)otherButtonTitles handlerBlock:(void (^)(NSInteger))handlerBlock{
    
    self = [super initWithTitle:title delegate:self cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:nil, nil];
    
    if (self) {
        
        self.handlerBlock = handlerBlock;
        
        if (otherButtonTitles) {
            
            [otherButtonTitles enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                
                [self addButtonWithTitle:obj];
            }];
        }
    }
    
    return self;
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if (self.handlerBlock) self.handlerBlock(buttonIndex);
    
    [actionSheet removeFromSuperview];
}

@end
