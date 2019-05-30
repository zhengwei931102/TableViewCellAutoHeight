//
//  JXChatCell.h
//  TableViewCell高度自适应
//
//  Created by zw on 2019/5/16.
//  Copyright © 2019 zw. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class JXChatModel;

@interface JXChatCell : UITableViewCell
/** 模型 */
@property (nonatomic,strong) JXChatModel * model;
@end

NS_ASSUME_NONNULL_END
