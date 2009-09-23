//
//  ContractionTimerAppDelegate.m
//  ContractionTimer
//
//  Created by Eric Smith on 9/22/09.
//  Copyright 8th Light 2009. All rights reserved.
//

#import "ContractionTimerAppDelegate.h"
#import "ContractionTimerViewController.h"

@implementation ContractionTimerAppDelegate

@synthesize window;
@synthesize tabBarController;


- (void)applicationDidFinishLaunching:(UIApplication *)application 
{
	[window addSubview:tabBarController.view];
}


- (void)dealloc 
{
    [tabBarController release];
    [window release];
    [super dealloc];
}


@end
