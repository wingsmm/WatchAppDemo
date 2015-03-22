//
//  ChatController.m
//  WatchChat
//
//  Created by ZhangBo on 15/3/22.
//  Copyright (c) 2015年 wingsmm. All rights reserved.
//

#import "ChatController.h"

#import "MessageRowModel.h"
#import "WKInterfaceImage+ParentLoad.h"
#import <AVFoundation/AVFoundation.h>
#import "RecordController.h"

typedef enum {
    MessageSourceIncoming = 1,
    MessageSourceOutgoing = 2
} MessageSource;

typedef enum {
    MessageTypeText = 1,
    MessageTypeVoice = 2,
    MessageTypeImage = 3
} MessageType;



@interface ChatController ()
{
    
    NSDictionary *_chat;
    NSMutableArray *_messages;
    AVAudioPlayer *_player;

}
@property (weak, nonatomic) IBOutlet WKInterfaceTable *table;
@property (strong, nonatomic) NSString *shouldSendVoice;

@end
@implementation ChatController



- (void)dealloc
{
    _chat = nil;
    _messages = nil;
    _player.delegate = nil;
    _player = nil;
}


- (void)awakeWithContext:(id)context
{
    _chat = context;
    
    NSLog(@"%@",_chat);
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}



@end
