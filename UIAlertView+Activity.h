//
//  UIAlertView+Activity.h
//  AlertViewActivityDemo
//
//  Created by Vid Tadel on 10/3/12.
//  Copyright (c) 2012 Research. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertView (Activity) <UIAlertViewDelegate>

+ (UIAlertView *)activityAlertViewWithTitle:(NSString *)title cancelButtonTitle:(NSString *)buttonTitle;

@end
