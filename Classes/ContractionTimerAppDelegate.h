//
//  ContractionTimerAppDelegate.h
//  ContractionTimer
//
//  Created by Eric Smith on 9/22/09.
//  Copyright 8th Light 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ContractionTimerViewController;

@interface ContractionTimerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ContractionTimerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ContractionTimerViewController *viewController;

@end

