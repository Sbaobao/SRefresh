//
//  StartView.m
//  profileSlide
//
//  Created by S on 15/10/19.
//  Copyright © 2015年 S. All rights reserved.
//

#import "StartView.h"

static CAShapeLayer * lineLayer;

#define LeftDistance 20

@implementation StartView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (instancetype)init {
    if ([super init]) {
        self.time = 5;
    }
    return self;
}

- (void)loadAnimationWithView:(UIView *)view {
    
    CGFloat ScreenWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = self.frame.size.height;
    // 画心
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    [bezierPath moveToPoint:CGPointMake(LeftDistance, height)];
    [bezierPath addLineToPoint:CGPointMake(self.center.x, height)];
    [bezierPath addCurveToPoint:CGPointMake(self.center.x, 0) controlPoint1:CGPointMake(self.center.x-height, height/2) controlPoint2:CGPointMake(self.center.x-height, -height*3/8)];
    [bezierPath addCurveToPoint:CGPointMake(self.center.x, height) controlPoint1:CGPointMake(self.center.x+height, -height*3/8) controlPoint2:CGPointMake(self.center.x+height, height/2)];
    [bezierPath addLineToPoint:CGPointMake(ScreenWidth-LeftDistance, height)];
    bezierPath.lineWidth = 1;
    [bezierPath stroke];
    
    lineLayer = [CAShapeLayer layer];
    lineLayer.lineCap = kCALineCapRound;
    lineLayer.lineJoin = kCALineJoinRound;
    lineLayer.lineWidth = 2;
    lineLayer.strokeColor = RGB(123, 104, 238).CGColor;
    lineLayer.path = bezierPath.CGPath;
    lineLayer.fillColor = [UIColor clearColor].CGColor;
    lineLayer.strokeStart = 0;
    lineLayer.strokeEnd = 0;
    
    // 画线动画
    CABasicAnimation *pathAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    pathAnimation.duration = self.time;
    pathAnimation.fromValue = [NSNumber numberWithFloat:0];
    pathAnimation.toValue = [NSNumber numberWithFloat:1];
    pathAnimation.removedOnCompletion = NO;
    pathAnimation.fillMode = kCAFillModeForwards;
    [lineLayer addAnimation:pathAnimation forKey:nil];
    
    [self.layer addSublayer:lineLayer];
    
    [view addSubview:self];
}


@end
