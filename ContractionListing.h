//
//  ContractionListing.h
//  ContractionTimer
//	
//  Created by Eric Smith on 9/23/09.
//  Copyright 2009 8th Light. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ContractionListing : NSObject<NSFastEnumeration>
{
	NSMutableArray *contractionList;
}

+(id) sharedListing;
-(void) startContraction;
-(void) stopContraction;
-(int) count;
@end
