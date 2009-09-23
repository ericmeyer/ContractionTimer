#import "ContractionTimerAppDelegateTest.h"
#import "ContractionTimerAppDelegate.h"
#import "MockWindow.h"

@implementation ContractionTimerAppDelegateTest

- (void) testAppDelegateLoadsItsTabBarControllerOnLoad
{
	ContractionTimerAppDelegate *appDelegate = [[[ContractionTimerAppDelegate alloc] init] autorelease];
	UITabBarController *tabBarController = [[[UITabBarController alloc] init] autorelease];
	UIView *view = [[[UIView alloc] init] autorelease];
	MockWindow *mockWindow = [[[MockWindow alloc] init] autorelease];
	
	appDelegate.tabBarController = tabBarController;
	appDelegate.window = mockWindow;
	tabBarController.view = view;
	
	[appDelegate applicationDidFinishLaunching:nil];
	
	STAssertTrue([mockWindow addSubviewCalledWith:view], nil);	
}

@end
