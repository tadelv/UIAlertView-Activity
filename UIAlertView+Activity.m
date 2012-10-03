//
//  UIAlertView+Activity.m
//  AlertViewActivityDemo
//
//  Created by Vid Tadel on 10/3/12.
//  Copyright (c) 2012 Research. All rights reserved.
//

#import "UIAlertView+Activity.h"

@implementation UIAlertView (Activity)

+ (UIAlertView *)activityAlertViewWithTitle:(NSString *)title cancelButtonTitle:(NSString *)buttonTitle {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:buttonTitle ? @"\n\n" : @"" delegate:nil cancelButtonTitle:buttonTitle otherButtonTitles:nil];
    alert.delegate = alert;
    return alert;
}

- (void)willPresentAlertView:(UIAlertView *)alertView {
    UIActivityIndicatorView *ac = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    //ac.frame = CGRectMake(125, 50, 30, 30);
    ac.center = CGPointMake(alertView.bounds.size.width/2, alertView.message.length ? alertView.bounds.size.height - 90 : alertView.bounds.size.height - 50);
    [ac startAnimating];
    [alertView addSubview:ac];
}

@end
