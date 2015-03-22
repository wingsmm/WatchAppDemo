//
//  ChatRowModel.h
//  WatchChat
//
//  Created by ZhangBo on 15/3/22.
//  Copyright (c) 2015年 wingsmm. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <WatchKit/WatchKit.h>


@interface ChatRowModel : NSObject

@property (weak, nonatomic) IBOutlet WKInterfaceImage *avatarImage;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *nameLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *unreadLabel;

@end
