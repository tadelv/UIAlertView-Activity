//
//  ViewController.m
//  AlertViewActivityDemo
//
//  Created by Vid Tadel on 10/3/12.
//  Copyright (c) 2012 Research. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertView+Activity.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)showAlertWithCancel:(id)sender {
    UIAlertView *alert = [UIAlertView activityAlertViewWithTitle:@"Demo title" cancelButtonTitle:@"Okay"];
    [alert show];
}

- (IBAction)showAlertWithoutButton:(id)sender {
    __block UIAlertView *alert = [UIAlertView activityAlertViewWithTitle:@"Look Ma, no buttons!" cancelButtonTitle:nil];
    [alert show];
    int64_t delayInSeconds = 5.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        [alert dismissWithClickedButtonIndex:0 animated:YES];
    });
}

- (IBAction)showAlertWithLongTitle:(id)sender {
    __block UIAlertView *alert = [UIAlertView activityAlertViewWithTitle:@"A long time ago, in a galaxy far far away..." cancelButtonTitle:nil];
    [alert show];
    int64_t delayInSeconds = 5.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        [alert dismissWithClickedButtonIndex:0 animated:YES];
    });
}

- (IBAction)showAlertWithLongTitleAndCancelButton:(id)sender {
    UIAlertView *alert = [UIAlertView activityAlertViewWithTitle:@"Space: The final frontier, These are the voyages of the Starship, Enterprise" cancelButtonTitle:@"Okay"];
    [alert show];
}

@end
