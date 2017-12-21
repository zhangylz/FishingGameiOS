//
//  HHShootButton.h
//  FishingGameiOS
//
//  Created by DFD on 2017/12/21.
//  Copyright © 2017年 DF. All rights reserved.
//  拾取金币的动画

#import <UIKit/UIKit.h>
@class ShootButtonSetting;


typedef NS_OPTIONS(NSUInteger, ShootButtonAnimationType) {
    ShootButtonAnimationTypeLine       = 0,  //直线
    ShootButtonAnimationTypeCurve      = 1,  //曲线
};


@interface HHShootButton : UIButton

@property (nonatomic, strong) ShootButtonSetting *setting;

- (instancetype)initWithFrame:(CGRect)frame andEndPoint:(CGPoint)point;
- (void)startAnimation;

@end

//默认设置
@interface ShootButtonSetting : NSObject

@property (nonatomic, assign) int totalCount;//动画产生imagView的个数，默认10个
@property (nonatomic, assign) CGFloat timeSpace; //产生imageView的时间间隔，默认0.1
@property (nonatomic, assign) CGFloat duration;//动画时长， 默认1s
@property (nonatomic, strong) UIImage *iconImage; //图片，默认为button自身图片
@property (nonatomic, assign) ShootButtonAnimationType animationType;//动画类型，默认曲线
// Factory method to help build a default setting
+ (ShootButtonSetting *)defaultSetting;
@end
