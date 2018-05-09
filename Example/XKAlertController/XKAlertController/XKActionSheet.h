//
//  XKActionSheet.h
//  XKAlertController
//
//  Created by Allen、 LAS on 2018/5/9.
//  Copyright © 2018年 重楼. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XKActionSheet : UIActionSheet<UIActionSheetDelegate>

/**
 *  iOS8.0之前系统弹窗样式
 *
 *  @param title 标题
 *  @param cancelButtonTitle  取消按钮
 *  @param otherButtonTitles  按钮名称数组
 *  @param handlerBlock  点击事件响应
 *
 */

- (instancetype)initWithTitle:(NSString*)title
            cancelButtonTitle:(NSString *)cancelButtonTitle
               destructiveButtonTitle:(NSString *)destructiveButtonTitle
           otherButtonTitles:(NSArray<NSString*>*)otherButtonTitles
                handlerBlock:(void(^)(NSInteger index))handlerBlock;
@end
