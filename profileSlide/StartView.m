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

- (void)loadAnimationWithView:(UIView *)view {
    
    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
    [bezierPath moveToPoint: CGPointMake(2.73, 16.24)];
    [bezierPath addCurveToPoint: CGPointMake(6.63, 2.54) controlPoint1: CGPointMake(3.05, 12.19) controlPoint2: CGPointMake(6.63, 2.54)];
    [bezierPath addCurveToPoint: CGPointMake(16.31, 6.26) controlPoint1: CGPointMake(6.63, 2.54) controlPoint2: CGPointMake(12.77, 3.84)];
    [bezierPath addCurveToPoint: CGPointMake(25.75, 15.64) controlPoint1: CGPointMake(17.29, 6.94) controlPoint2: CGPointMake(25.75, 15.64)];
    [bezierPath addCurveToPoint: CGPointMake(37.68, 14.3) controlPoint1: CGPointMake(25.75, 15.64) controlPoint2: CGPointMake(33.29, 14.19)];
    [bezierPath addCurveToPoint: CGPointMake(49.39, 16.24) controlPoint1: CGPointMake(41.17, 14.39) controlPoint2: CGPointMake(49.39, 16.24)];
    [bezierPath addCurveToPoint: CGPointMake(61.85, 9.4) controlPoint1: CGPointMake(49.39, 16.24) controlPoint2: CGPointMake(57.41, 10.78)];
    [bezierPath addCurveToPoint: CGPointMake(77.12, 7.59) controlPoint1: CGPointMake(66.65, 7.9) controlPoint2: CGPointMake(77.12, 7.59)];
    [bezierPath addCurveToPoint: CGPointMake(75.86, 17.79) controlPoint1: CGPointMake(77.12, 7.59) controlPoint2: CGPointMake(76.93, 14.21)];
    [bezierPath addCurveToPoint: CGPointMake(69.59, 32.77) controlPoint1: CGPointMake(74.42, 22.6) controlPoint2: CGPointMake(69.59, 32.77)];
    [bezierPath addCurveToPoint: CGPointMake(69.59, 49.14) controlPoint1: CGPointMake(69.59, 32.77) controlPoint2: CGPointMake(73.81, 39.1)];
    [bezierPath addCurveToPoint: CGPointMake(56.86, 64.51) controlPoint1: CGPointMake(65.38, 59.19) controlPoint2: CGPointMake(56.86, 64.51)];
    [bezierPath addCurveToPoint: CGPointMake(62.96, 67.4) controlPoint1: CGPointMake(56.86, 64.51) controlPoint2: CGPointMake(61.3, 66.29)];
    [bezierPath addCurveToPoint: CGPointMake(68.5, 72.3) controlPoint1: CGPointMake(65.18, 68.89) controlPoint2: CGPointMake(68.5, 72.3)];
    [bezierPath addCurveToPoint: CGPointMake(79.56, 61.25) controlPoint1: CGPointMake(68.5, 72.3) controlPoint2: CGPointMake(67.87, 67.97)];
    [bezierPath addCurveToPoint: CGPointMake(93.93, 60.32) controlPoint1: CGPointMake(91.25, 54.53) controlPoint2: CGPointMake(93.93, 60.32)];
    [bezierPath addCurveToPoint: CGPointMake(92.82, 63.52) controlPoint1: CGPointMake(93.93, 60.32) controlPoint2: CGPointMake(94.42, 62.72)];
    [bezierPath addCurveToPoint: CGPointMake(80.75, 67.4) controlPoint1: CGPointMake(90.57, 64.65) controlPoint2: CGPointMake(85.51, 64.59)];
    [bezierPath addCurveToPoint: CGPointMake(72.37, 76.05) controlPoint1: CGPointMake(72.61, 72.23) controlPoint2: CGPointMake(72.37, 76.05)];
    [bezierPath addCurveToPoint: CGPointMake(78.29, 84.58) controlPoint1: CGPointMake(72.37, 76.05) controlPoint2: CGPointMake(74.21, 76.94)];
    [bezierPath addCurveToPoint: CGPointMake(79.56, 93.01) controlPoint1: CGPointMake(80.09, 87.95) controlPoint2: CGPointMake(80.42, 91.19)];
    [bezierPath addCurveToPoint: CGPointMake(75.86, 95.75) controlPoint1: CGPointMake(78.48, 95.31) controlPoint2: CGPointMake(75.86, 95.75)];
    [bezierPath addCurveToPoint: CGPointMake(72.37, 94.34) controlPoint1: CGPointMake(75.86, 95.75) controlPoint2: CGPointMake(75.14, 96.58)];
    [bezierPath addCurveToPoint: CGPointMake(60.93, 86.24) controlPoint1: CGPointMake(69.59, 92.09) controlPoint2: CGPointMake(65.35, 88.79)];
    [bezierPath addCurveToPoint: CGPointMake(44.79, 80.35) controlPoint1: CGPointMake(49.5, 79.64) controlPoint2: CGPointMake(44.79, 80.35)];
    [bezierPath addCurveToPoint: CGPointMake(31.68, 78.95) controlPoint1: CGPointMake(44.79, 80.35) controlPoint2: CGPointMake(42.91, 78.95)];
    [bezierPath addCurveToPoint: CGPointMake(21.71, 80.56) controlPoint1: CGPointMake(27.36, 78.95) controlPoint2: CGPointMake(24.33, 80.27)];
    [bezierPath addCurveToPoint: CGPointMake(13.73, 78.95) controlPoint1: CGPointMake(17.53, 81.03) controlPoint2: CGPointMake(13.73, 78.95)];
    [bezierPath addCurveToPoint: CGPointMake(12.39, 74.27) controlPoint1: CGPointMake(13.73, 78.95) controlPoint2: CGPointMake(11.47, 77.09)];
    [bezierPath addCurveToPoint: CGPointMake(18.67, 68.93) controlPoint1: CGPointMake(13.19, 71.79) controlPoint2: CGPointMake(16.71, 70.08)];
    [bezierPath addCurveToPoint: CGPointMake(22.76, 66.61) controlPoint1: CGPointMake(21.49, 67.28) controlPoint2: CGPointMake(22.76, 66.61)];
    [bezierPath addCurveToPoint: CGPointMake(7.67, 56.9) controlPoint1: CGPointMake(22.76, 66.61) controlPoint2: CGPointMake(16.31, 64.51)];
    [bezierPath addCurveToPoint: CGPointMake(4.21, 32.55) controlPoint1: CGPointMake(-0.97, 49.28) controlPoint2: CGPointMake(4.21, 32.55)];
    [bezierPath addCurveToPoint: CGPointMake(2.73, 16.24) controlPoint1: CGPointMake(4.21, 32.55) controlPoint2: CGPointMake(2.25, 22.2)];
    [bezierPath closePath];
    bezierPath.miterLimit = 4;
    
    bezierPath.usesEvenOddFillRule = YES;
    
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
