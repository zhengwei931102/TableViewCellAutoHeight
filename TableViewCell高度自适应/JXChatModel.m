//
//  JXChatModel.m
//  TableViewCell高度自适应
//
//  Created by zw on 2019/5/16.
//  Copyright © 2019 zw. All rights reserved.
//

#import "JXChatModel.h"

@implementation JXChatModel
+ (instancetype)modelWithDict:(NSDictionary *)dict {
    JXChatModel * model = [[self alloc] init];
    [model setValuesForKeysWithDictionary:dict];
    return model;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    // 这里对没有定义的键值对不进行任何操作
}
@end
