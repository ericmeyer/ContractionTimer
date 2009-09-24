//
//  Contraction.m
//  ContractionTimer
//
//  Created by Eric Smith on 9/23/09.
//  Copyright 2009 8th Light. All rights reserved.
//

#import "Contraction.h"


@implementation Contraction

@synthesize start, stop;

-(NSTimeInterval) timeSince:(Contraction *) contraction 
{
	return [self.start timeIntervalSinceDate:contraction.stop];
}

@end
