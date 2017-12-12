//
//  SYLog.h
//  2017-8-7
//
//  Created by 张士玉 on 17/8/14.
//  Copyright © 2017年 ZSY. All rights reserved.
//

#ifdef DEBUG  // 调试状态
// 打开LOG功能
#define SYLog(...) NSLog(__VA_ARGS__)
#define ZSY(fmt, ...) NSLog((@"[文件名:%s]\n" "[函数名:%s]\n" "[行号:%d] \n" fmt), __FILE__, __FUNCTION__, __LINE__, ##__VA_ARGS__);
#else // 发布状态
// 关闭LOG功能
#define SYLog(...)
#define ZSY(...)
#endif
