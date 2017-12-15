//
//  UIAlertController+SYExtention.h
//  2017-8-7
//  UIAlertController弹出框  2017版
//  Created by 张士玉 on 17/8/7.
//  Copyright © 2017年 ZSY. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    SURETYPE,
    SUREANDCANNELTYPE,
    CANNELTYPE,
} AlertType;
typedef void (^AlertCompleteHandle)(NSInteger tag);
@interface UIAlertController (SYExtention)

/**
 弹出提示框

 @param title           title
 @param message         message
 @param type            AlertType
 @param delegate        delegate
 @param completeHandle  block
 */
+ (void)showTitle:(NSString *)title msg:(NSString *)message type:(AlertType)type delegate:(id)delegate complete:(AlertCompleteHandle)completeHandle;
@end
