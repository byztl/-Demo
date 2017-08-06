//
//  ViewController.m
//  TestAddNewView
//
//  Created by JING XU on 17/7/17.
//  Copyright © 2017年 HB. All rights reserved.
//

#import "ViewController.h"
#import "HBButtonAddView.h"

@interface ViewController ()
<HBButtonAddViewDelegate>

/** 展示数据的Label */
@property (nonatomic, strong) UILabel *showLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HBButtonAddView *buttonAddView = [[HBButtonAddView alloc] initWithFrame:CGRectMake(50, 100, [UIScreen mainScreen].bounds.size.width - 100, 80)];
    buttonAddView.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.3];
    buttonAddView.delegate = self;
    [self.view addSubview:buttonAddView];
    
    UILabel *showLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, [UIScreen mainScreen].bounds.size.height - 300, [UIScreen mainScreen].bounds.size.width - 100, 300)];
    showLabel.text = @"展示数据处";
    showLabel.font = [UIFont systemFontOfSize:14];
    showLabel.textColor = [UIColor blackColor];
    showLabel.numberOfLines = 0;
    showLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:showLabel];
    self.showLabel = showLabel;
}

#pragma mark - <HBButtonAddViewDelegate>
- (void)buttonAddView:(HBButtonAddView *)buttonAddView contents:(NSMutableArray *)contents {
    NSString *labelTextStr = @"";
    // 循环取出text
    for (NSInteger i = 0; i < contents.count; i++) {
        if (i == 0) {
            labelTextStr = [NSString stringWithFormat:@"第%d行text:%@", i + 1, contents[i]];
        } else {
            labelTextStr = [NSString stringWithFormat:@"%@\n第%d行text:%@", labelTextStr, i + 1, contents[i]];
        }
    }
    self.showLabel.text = labelTextStr;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    [self.view endEditing:YES];
}

@end
