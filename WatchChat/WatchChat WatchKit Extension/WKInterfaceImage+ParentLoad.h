//
//  WKInterfaceImage+ParentLoad.h
//  WatchChat
//
//  Created by ZhangBo on 15/3/22.
//  Copyright (c) 2015年 wingsmm. All rights reserved.
//

#import <WatchKit/WatchKit.h>

@interface WKInterfaceImage (ParentLoad)

- (void)loadImageWithURLString:(NSString *)urlString placeholder:(UIImage *)image;

@end
