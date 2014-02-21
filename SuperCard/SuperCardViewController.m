//
//  SuperCardViewController.m
//  SuperCard
//
//  Created by Lewis Cooper on 2/17/14.
//  Copyright (c) 2014 Lewis Cooper. All rights reserved.
//

#import "SuperCardViewController.h"

@interface SuperCardViewController ()

@end

@implementation SuperCardViewController
@synthesize view;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
