//
//  XKAlertController.h
//  XKAlertController
//
//  Created by Allen、 LAS on 2018/5/9.
//  Copyright © 2018年 重楼. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XKAlertController : UIAlertController

/**
 *  iOS8.0之后系统弹窗新样式
 *
 *  @param title 标题
 *  @param msg  提示信息
 *  @param preferredStyle ActionSheet或Alert
 *  @param actionTitles  按钮名称数组
 *  @param actionStyles  按钮风格数组
 *  @param handlerBlock  点击事件响应
 *
 */
+ (XKAlertController*)xk_AlertController:(NSString*)title
                                     msg:(NSString*)msg
                          preferredStyle:(UIAlertControllerStyle)preferredStyle
                            actionTitles:(NSArray<NSString*>*)actionTitles
                            actionStyles:(NSArray<NSNumber*>*)actionStyles
                            handlerBlock:(void(^)(NSInteger index))handlerBlock;

@end
