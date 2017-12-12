//
//  UIAlertController+SYExtention.m
//  2017-8-7
//
//  Created by 张士玉 on 17/8/7.
//  Copyright © 2017年 ZSY. All rights reserved.
//

#import "UIAlertController+SYExtention.h"
#import "SYLog.h"

@implementation UIAlertController (SYExtention)
+ (void)showTitle:(NSString *)title msg:(NSString *)message type:(AlertType)type delegate:(id)delegate complete:(AlertCompleteHandle)completeHandle {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    switch (type) {
        case SURETYPE:
        {
            [alertController addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                SYLog(@"点击确认");
//                NSLog(@"点击确认");
                if (completeHandle) {
                    completeHandle(1);
                }
            }]];
        }
            break;
        case SUREANDCANNELTYPE:
        {
            [alertController addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                SYLog(@"点击确认");
//                NSLog(@"点击确认");
                if (completeHandle) {
                    completeHandle(1);
                }
            }]];
            [alertController addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                SYLog(@"点击取消");
//                NSLog(@"点击取消");
                if (completeHandle) {
                    completeHandle(0);
                }
            }]];
        }
            break;
        case CANNELTYPE:
        {
            [alertController addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                SYLog(@"点击取消");
//                NSLog(@"点击取消");
                if (completeHandle) {
                    completeHandle(1);
                }
            }]];
        }
            break;
        default:
            break;
    }
    [delegate presentViewController:alertController animated:YES completion:nil];
}
@end
