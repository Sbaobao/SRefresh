//
//  StartView.m
//  profileSlide
//
//  Created by S on 15/10/19.
//  Copyright © 2015年 S. All rights reserved.
//

#import "StartView.h"

static CAShapeLayer * lineLayer;

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

- (void)loadAnimation {
    
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    [bezierPath moveToPoint: CGPointMake(149.29, 249.07)];
    [bezierPath addCurveToPoint: CGPointMake(154.26, 232) controlPoint1: CGPointMake(149.7, 244.03) controlPoint2: CGPointMake(154.26, 232)];
    [bezierPath addCurveToPoint: CGPointMake(166.58, 236.64) controlPoint1: CGPointMake(154.26, 232) controlPoint2: CGPointMake(162.08, 233.62)];
    [bezierPath addCurveToPoint: CGPointMake(178.61, 248.33) controlPoint1: CGPointMake(167.84, 237.48) controlPoint2: CGPointMake(178.61, 248.33)];
    [bezierPath addCurveToPoint: CGPointMake(193.8, 246.66) controlPoint1: CGPointMake(178.61, 248.33) controlPoint2: CGPointMake(188.21, 246.53)];
    [bezierPath addCurveToPoint: CGPointMake(208.72, 249.07) controlPoint1: CGPointMake(198.25, 246.77) controlPoint2: CGPointMake(208.72, 249.07)];
    [bezierPath addCurveToPoint: CGPointMake(224.58, 240.55) controlPoint1: CGPointMake(208.72, 249.07) controlPoint2: CGPointMake(218.93, 242.27)];
    [bezierPath addCurveToPoint: CGPointMake(244.04, 238.3) controlPoint1: CGPointMake(230.71, 238.68) controlPoint2: CGPointMake(244.04, 238.3)];
    [bezierPath addCurveToPoint: CGPointMake(242.43, 251.01) controlPoint1: CGPointMake(244.04, 238.3) controlPoint2: CGPointMake(243.79, 246.55)];
    [bezierPath addCurveToPoint: CGPointMake(234.45, 269.68) controlPoint1: CGPointMake(240.6, 257.01) controlPoint2: CGPointMake(234.45, 269.68)];
    [bezierPath addCurveToPoint: CGPointMake(234.45, 290.09) controlPoint1: CGPointMake(234.45, 269.68) controlPoint2: CGPointMake(239.82, 277.57)];
    [bezierPath addCurveToPoint: CGPointMake(218.23, 309.24) controlPoint1: CGPointMake(229.08, 302.6) controlPoint2: CGPointMake(218.23, 309.24)];
    [bezierPath addCurveToPoint: CGPointMake(226.01, 312.84) controlPoint1: CGPointMake(218.23, 309.24) controlPoint2: CGPointMake(223.89, 311.46)];
    [bezierPath addCurveToPoint: CGPointMake(233.06, 318.95) controlPoint1: CGPointMake(228.84, 314.7) controlPoint2: CGPointMake(233.06, 318.95)];
    [bezierPath addCurveToPoint: CGPointMake(247.15, 305.17) controlPoint1: CGPointMake(233.06, 318.95) controlPoint2: CGPointMake(232.26, 313.55)];
    [bezierPath addCurveToPoint: CGPointMake(265.45, 304.01) controlPoint1: CGPointMake(262.04, 296.8) controlPoint2: CGPointMake(265.45, 304.01)];
    [bezierPath addCurveToPoint: CGPointMake(264.03, 308.01) controlPoint1: CGPointMake(265.45, 304.01) controlPoint2: CGPointMake(266.07, 307.01)];
    [bezierPath addCurveToPoint: CGPointMake(248.67, 312.84) controlPoint1: CGPointMake(261.17, 309.42) controlPoint2: CGPointMake(254.73, 309.33)];
    [bezierPath addCurveToPoint: CGPointMake(237.99, 323.62) controlPoint1: CGPointMake(238.29, 318.86) controlPoint2: CGPointMake(237.99, 323.62)];
    [bezierPath addCurveToPoint: CGPointMake(245.53, 334.25) controlPoint1: CGPointMake(237.99, 323.62) controlPoint2: CGPointMake(240.34, 324.73)];
    [bezierPath addCurveToPoint: CGPointMake(247.15, 344.76) controlPoint1: CGPointMake(247.82, 338.46) controlPoint2: CGPointMake(248.24, 342.49)];
    [bezierPath addCurveToPoint: CGPointMake(242.43, 348.17) controlPoint1: CGPointMake(245.77, 347.62) controlPoint2: CGPointMake(242.43, 348.17)];
    [bezierPath addCurveToPoint: CGPointMake(237.99, 346.41) controlPoint1: CGPointMake(242.43, 348.17) controlPoint2: CGPointMake(241.52, 349.21)];
    [bezierPath addCurveToPoint: CGPointMake(223.42, 336.33) controlPoint1: CGPointMake(234.45, 343.62) controlPoint2: CGPointMake(229.05, 339.5)];
    [bezierPath addCurveToPoint: CGPointMake(202.86, 328.98) controlPoint1: CGPointMake(208.86, 328.1) controlPoint2: CGPointMake(202.86, 328.98)];
    [bezierPath addCurveToPoint: CGPointMake(186.17, 327.24) controlPoint1: CGPointMake(202.86, 328.98) controlPoint2: CGPointMake(200.47, 327.24)];
    [bezierPath addCurveToPoint: CGPointMake(173.47, 329.24) controlPoint1: CGPointMake(180.66, 327.24) controlPoint2: CGPointMake(176.81, 328.88)];
    [bezierPath addCurveToPoint: CGPointMake(163.3, 327.24) controlPoint1: CGPointMake(168.14, 329.83) controlPoint2: CGPointMake(163.3, 327.24)];
    [bezierPath addCurveToPoint: CGPointMake(161.59, 321.41) controlPoint1: CGPointMake(163.3, 327.24) controlPoint2: CGPointMake(160.42, 324.92)];
    [bezierPath addCurveToPoint: CGPointMake(169.6, 314.75) controlPoint1: CGPointMake(162.61, 318.31) controlPoint2: CGPointMake(167.09, 316.18)];
    [bezierPath addCurveToPoint: CGPointMake(174.81, 311.86) controlPoint1: CGPointMake(173.18, 312.69) controlPoint2: CGPointMake(174.81, 311.86)];
    [bezierPath addCurveToPoint: CGPointMake(155.58, 299.75) controlPoint1: CGPointMake(174.81, 311.86) controlPoint2: CGPointMake(166.58, 309.24)];
    [bezierPath addCurveToPoint: CGPointMake(151.18, 269.41) controlPoint1: CGPointMake(144.58, 290.26) controlPoint2: CGPointMake(151.18, 269.41)];
    [bezierPath addCurveToPoint: CGPointMake(149.29, 249.07) controlPoint1: CGPointMake(151.18, 269.41) controlPoint2: CGPointMake(148.67, 256.5)];
    [bezierPath closePath];
    bezierPath.miterLimit = 4;
    
    bezierPath.usesEvenOddFillRule = YES;
    
    bezierPath.lineWidth = 1;
    [bezierPath stroke];
    
    lineLayer = [CAShapeLayer layer];
    lineLayer.frame = self.frame;
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
}


@end
