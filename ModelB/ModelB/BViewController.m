//
//  BViewController.m
//  MainProject
//
//  Created by casa on 2016/12/10.
//  Copyright © 2016年 casa. All rights reserved.
//

#import "BViewController.h"
#import <HandyFrame/UIView+LayoutMethods.h>
typedef void  (^test)(NSString *log);
@interface BViewController ()

@property (nonatomic, strong) UILabel *contentLabel;
@property (nonatomic ,copy) test testBlock;
@end

@implementation BViewController

#pragma mark - life cycle
- (instancetype)initWithContentText:(NSString *)contentText block:(void (^)(NSString *))block
{
    self = [super init];
    if (self) {
        self.contentLabel.text = contentText;
        self.testBlock = block;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.contentLabel];
    UIButton *leftBarButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
    //    [leftBarButton setBackgroundColor:[UIColor magentaColor] forState:UIControlStateNormal];
//    [leftBarButton setImage:[UIImage imageWithName:@"common_close_normal_greenGround"] forState:UIControlStateNormal];
//    [leftBarButton setImage:[UIImage imageWithName:@"common_close_selected_greenGround"] forState:UIControlStateHighlighted];
    [leftBarButton setImageEdgeInsets:UIEdgeInsetsMake(10, 15, 0, 0)];
    [leftBarButton setTitle:@"backkkk" forState:UIControlStateNormal];
    //  监听点击事件
    [leftBarButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:leftBarButton];
    [leftBarButton centerEqualToView:self.view];

}

- (void)back
{
    if (self.testBlock) {
        self.testBlock(@"lsllfl");
    }
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    [self.contentLabel sizeToFit];
    [self.contentLabel centerEqualToView:self.view];
}

#pragma mark - getters and setters
- (UILabel *)contentLabel
{
    if (_contentLabel == nil) {
        _contentLabel = [[UILabel alloc] init];
        _contentLabel.textColor = [UIColor blueColor];
    }
    return _contentLabel;
}

@end
