//
//  Contraction.h
//  ContractionTimer
//
//  Created by Eric Smith on 9/23/09.
//  Copyright 2009 8th Light. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Contraction : NSObject {
	NSDate *start;
	NSDate *stop;
}

@property(nonatomic, retain) NSDate *start;
@property(nonatomic, retain) NSDate *stop;
-(NSTimeInterval) timeSince: (Contraction*) date;

@end
