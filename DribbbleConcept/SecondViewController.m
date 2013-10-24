//
//  SecondViewController.m
//  DribbbleConcept
//
//  Created by Hubert Kunnemeyer on 10/23/13.
//  Copyright (c) 2013 Hubert Kunnemeyer. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

- (IBAction)pushLink:(id)sender;
@end

@implementation SecondViewController

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

- (IBAction)pushLink:(id)sender {
    NSString *URL = @"http://dribbble.com/shots/694671-Buttons-Free-PSD?list=searches&tag=buttons_psd";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:URL]];
}
@end
