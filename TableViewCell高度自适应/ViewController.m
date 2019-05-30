//
//  ViewController.m
//  TableViewCell高度自适应
//
//  Created by zw on 2019/5/16.
//  Copyright © 2019 zw. All rights reserved.
//

#import "ViewController.h"
#import "JXChatCell.h"
#import "JXChatModel.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
/** 数据源数组 */
@property (nonatomic,strong) NSMutableArray * chatArray;
/** UITableView */
@property (nonatomic,weak) UITableView * tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 数据
    NSArray * array = @[
                        @{
                            @"nickName":@"你成佛了",
                            @"graide":@"16",
                            @"content":@"连接方式李金发欧式24234242342冯绍峰烦死拉伸的减肥了敬爱是骄傲是激发按时发放费；啊； 拉伸放假接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"了仨解放啦",
                            @"graide":@"6",
                            @"content":@"连接方式沙发沙发"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"式李金发",
                            @"graide":@"13",
                            @"content":@"连接方式接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放323242342432圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法来释放"
                            },
                        @{
                            @"nickName":@"垃圾费垃圾房间",
                            @"graide":@"1",
                            @"content":@"连接方式李反对党的圾费垃圾房间爱乱收费；啊； 拉伸放假啊；发；是放假啊；了解算法lkjslajflsajflasjlasjflajflj零距离圣诞节佛按实际大量积分垃圾地方啦垃圾了房间爱令肌肤拉伸件地方垃圾垃圾了极大浪费就暗恋的激发了设计费垃圾费拉激发偶尔加乱收费来释放"
                            }
                        ];
    
    // 将数据转换成模型
    for (NSDictionary * dict in array) {
        JXChatModel * model = [JXChatModel modelWithDict:dict];
        [self.chatArray addObject:model];
    }
    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.chatArray.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString * identifier = @"cell";
    
    JXChatCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[JXChatCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.model = self.chatArray[indexPath.row];
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    JXChatModel * model = self.chatArray[indexPath.row];
    return model.cellHeight;
}

//// 先给cell表格一个预估计高度
//- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return 0;
//}
- (NSMutableArray *)chatArray{
    if (_chatArray == nil) {
        _chatArray = [NSMutableArray array];
    }
    return _chatArray;
}

- (UITableView *)tableView{
    if (_tableView == nil) {
        UITableView * tableView = [[UITableView alloc] init];
        tableView.frame = self.view.bounds;
        tableView.delegate = self;
        tableView.dataSource = self;
        [self.view addSubview:tableView];
        _tableView = tableView;
    }
    return _tableView;
}
@end
