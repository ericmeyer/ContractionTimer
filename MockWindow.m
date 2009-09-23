//
//  MockWindow.m
//  ContractionTimer
//
//  Created by Eric Smith on 9/22/09.
//  Copyright 2009 8th Light. All rights reserved.
//

#import "MockWindow.h"

@implementation MockWindow

-(bool) addSubviewCalledWith:(UIView *) view 
{
	return calledWithView == view;
}

-(void) addSubview:(UIView *) view
{
	calledWithView = view;
	[calledWithView retain];
}

-(void) dealloc 
{
	[calledWithView release];
	[super dealloc];
}
@end
