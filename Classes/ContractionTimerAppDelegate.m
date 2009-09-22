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
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
