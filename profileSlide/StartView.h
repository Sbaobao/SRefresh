//
//  StartView.h
//  profileSlide
//
//  Created by S on 15/10/19.
//  Copyright © 2015年 S. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StartView : UIImageView

/**
 *
 *  动画持续时间 (默认5s)
 *
 */
@property (nonatomic,assign) CGFloat time;


- (void)loadAnimation;


@end
