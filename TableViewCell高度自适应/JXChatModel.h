//
//  JXChatModel.h
//  TableViewCell高度自适应
//
//  Created by zw on 2019/5/16.
//  Copyright © 2019 zw. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JXChatModel : NSObject
// 字典模型转换
+ (instancetype)modelWithDict:(NSDictionary *)dict;
/** 昵称 */
@property (nonatomic,copy) NSString * nickName;
/** 等级 */
@property (nonatomic,copy) NSString * graide;
/** 内容 */
@property (nonatomic,copy) NSString * content;
/** 高度，用来存放计算后的cell高度 */
@property (nonatomic,assign) float cellHeight;
@end

NS_ASSUME_NONNULL_END
