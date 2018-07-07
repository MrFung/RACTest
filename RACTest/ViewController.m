//
//  ViewController.m
//  RACTest
//
//  Created by 郭枫 on 2018/7/7.
//  Copyright © 2018年 郭枫. All rights reserved.
//

#import "ViewController.h"
#import "ReactiveObjC.h"
#import "NSObject+RACKVOWrapper.h"

@interface ViewController ()

@property(strong, nonatomic) id<RACSubscriber> subscriber;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  //  //RACSignal:只能订阅信号,在内部由订阅者发送信号
//  //创建信号
//  RACSignal *signal = [RACSignal createSignal:^RACDisposable * (id<RACSubscriber> subscriber) {//订阅信号，执行subscribeNext时调用该代码块
//    //发送信号
//    [subscriber sendNext:@"MrFung"];
//    [subscriber sendCompleted];
//
//    return [RACDisposable disposableWithBlock:^{
//      NSLog(@"信号发送完成或者错误，执行此block取消订阅，当前信号不再被订阅");
//    }];
//  }];
//
//  //订阅信号
//  [signal subscribeNext:^(id x){//发送数据：调用sendNext时才会调用该代码块
//    NSLog(@"接收数据：%@", x);//接收数据：MrFung
//  }];
  
  //  //RACDisposable:取消订阅
//  //创建信号
//  RACSignal *signal = [RACSignal createSignal:^RACDisposable * (id<RACSubscriber> subscriber) {
//    //发送信号
//    [subscriber sendNext:@"MrFung"];
//
//    _subscriber = subscriber;//全局变量保存起来,系统不会取消订阅
//    return [RACDisposable disposableWithBlock:^ {
//      NSLog(@"取消订阅,清理资源");
//    }];
//  }];
//
//  //订阅信号
//  RACDisposable *dispose = [signal subscribeNext:^(id x) {
//    NSLog(@"接受数据: %@", x);
//  }];
//
//  [dispose dispose];//主动取消订阅
  
//  //RACSubject:既能订阅信号,也能发送信号
//  //创建信号
//  RACSubject *subject = [RACSubject subject];
//
//  //订阅信号
//  [subject subscribeNext:^(id x) {
//    NSLog(@"接收到值: %@", x);
//  }];
//
//  //发送信号
//  [subject sendNext:@"MrFung"];
  
//  //RACReplaySubject:既可以先订阅信号再发送信号,也可以先发送信号再订阅信号
//  //先订阅再发送:
//  //创建信号
//  RACReplaySubject *replaySubject = [RACReplaySubject subject];
//
//  //订阅信号
//  [replaySubject subscribeNext:^(id x) {
//    NSLog(@"订阅者1接收到值: %@", x);
//  }];
//
//  //发送信号
//  [replaySubject sendNext:@"MrFung"];
  
//  //先发送再订阅:
//  //创建信号
//  RACReplaySubject *replaySubject = [RACReplaySubject subject];
//
//  //发送信号
//  [replaySubject sendNext:@"MrFung"];
//
//  //订阅信号
//  [replaySubject subscribeNext:^(id x) {
//    NSLog(@"订阅者1接收到值: %@", x);
//  }];
  
//  //RAC的KVO:
//  [self.view rac_observeKeyPath:@"alpha" options:NSKeyValueObservingOptionNew observer:nil block:^(id value, NSDictionary *change, BOOL causedByDealloc, BOOL affectedOnlyLastComponent) {
//    NSLog(@"change: %@", change);
//  }];
//
//  [[self.view rac_valuesAndChangesForKeyPath:@"backgroundColor" options:NSKeyValueObservingOptionNew observer:nil] subscribeNext:^(id x) {
//    NSLog(@"x:%@", x);
//  }];
  
//  //RAC按钮监听事件
//  UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 30)];
//  [button setTitle:@"Button" forState:UIControlStateNormal];
//  button.backgroundColor = [UIColor grayColor];
//
//  //监听和实现在一起
//  [[button rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^ (id x) {
//    NSLog(@"按钮被点击了:%@", x);
//  }];
//
//  [self.view addSubview:button];
  
//  //RAC通知:
//  [[[NSNotificationCenter defaultCenter] rac_addObserverForName:UIKeyboardWillShowNotification object:nil] subscribeNext:^(id x) {
//    NSLog(@"键盘即将显示");
//  }];
//
//  //RAC监听文本框内容
//  [[textField rac_textSignal] subscribeNext:^ (id x) {
//    NSLog(@"文本框内容改变了: %@", x);
//  }];
  
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
  self.view.backgroundColor = [UIColor grayColor];
  self.view.alpha = 0.5;
}

@end
