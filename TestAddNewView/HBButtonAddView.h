//
//  HBButtonAddView.h
//  TestAddNewView
//
//  Created by JING XU on 17/7/17.
//  Copyright © 2017年 HB. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HBButtonAddView;

@protocol HBButtonAddViewDelegate <NSObject>

- (void)buttonAddView:(HBButtonAddView *)buttonAddView contents:(NSMutableArray *)contents;

@end

@interface HBButtonAddView : UIView

/** 协议 */
@property (nonatomic, assign) id<HBButtonAddViewDelegate> delegate;

@end
