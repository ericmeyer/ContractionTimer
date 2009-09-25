//
//  ContractionTimerViewController.m
//  ContractionTimer
//
//  Created by Eric Smith on 9/22/09.
//  Copyright 8th Light 2009. All rights reserved.
//

#import "ContractionTimerViewController.h"

@implementation ContractionTimerViewController

-(void) startTimer: (id)sender {
	ContractionListing* listing = [ContractionListing sharedListing];
	[listing startContraction];

	UIButton *button = (UIButton *)sender;

	[button setTitle:@"Stop Contraction" forState:UIControlStateNormal];
	[button removeTarget:nil action:@selector(startTimer:) forControlEvents:UIControlEventTouchUpInside];
	[button addTarget:nil action:@selector(stopTimer:) forControlEvents:UIControlEventTouchUpInside];
}

-(void) stopTimer: (id)sender {
	ContractionListing* listing = [ContractionListing sharedListing];
	[listing stopContraction];
	
	UIButton *button = (UIButton *)sender;
	
	[button setTitle:@"Contraction" forState:UIControlStateNormal];
	[button removeTarget:nil action:@selector(stopTimer:) forControlEvents:UIControlEventTouchUpInside];
	[button addTarget:nil action:@selector(startTimer:) forControlEvents:UIControlEventTouchUpInside];
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
