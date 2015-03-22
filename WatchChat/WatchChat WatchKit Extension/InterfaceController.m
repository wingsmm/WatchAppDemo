//
//  InterfaceController.m
//  WatchChat WatchKit Extension
//
//  Created by ZhangBo on 15/3/22.
//  Copyright (c) 2015年 wingsmm. All rights reserved.
//

#import "InterfaceController.h"
#import "ChatRowModel.h"
#import "WKInterfaceImage+ParentLoad.h"

@interface InterfaceController()

@property (weak, nonatomic) IBOutlet WKInterfaceTable *table;
@property (strong, nonatomic) NSMutableArray *chats;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    
    [super awakeWithContext:context];
    [self loadData];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}






- (void)loadData
{
    _chats = [@[@{@"id":@"1", @"avatar":@"http://tp2.sinaimg.cn/1995450257/180/40080444093/0", @"name":@"小草姐", @"count":@(81)}, @{@"id":@"2", @"avatar":@"http://tp3.sinaimg.cn/1657938842/180/5704612869/1", @"name":@"李四", @"count":@(49)}, @{@"id":@"3", @"avatar":@"http://tp3.sinaimg.cn/1657938842/180/5704612869/1", @"name":@"王五", @"count":@(1)}] mutableCopy];
    // do some api to load chat data and then:
    [_table setNumberOfRows:_chats.count withRowType:@"Chat"];
    for (int i = 0; i < _table.numberOfRows; i++) {
        
        ChatRowModel *crc = [_table rowControllerAtIndex:i];
        
        NSDictionary *dic = self.chats[i];
        NSString *avatar = dic[@"avatar"];
        NSString *name = dic[@"name"];
        int count = [dic[@"count"] intValue];
        
        if (i==0) {
            [crc.avatarImage loadImageWithURLString:avatar placeholder:nil];
        }else if(i==1){
            [crc.avatarImage setImage:[UIImage imageNamed:@"1"] ];
        }else{

        }
        
        
        [crc.nameLabel setText:name];
        [crc.unreadLabel setText:[NSString stringWithFormat:@"%d 未读", count]];
    }
    
    
    
}



- (id)contextForSegueWithIdentifier:(NSString *)segueIdentifier inTable:(WKInterfaceTable *)table rowIndex:(NSInteger)rowIndex
{
    return _chats[rowIndex];
}



@end



