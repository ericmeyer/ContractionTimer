#import "ContractionTest.h"
#import "Contraction.h"

@implementation ContractionTest

-(void) testTimeIntervalBetweenContractions
{
	Contraction* contraction1 = [[[Contraction alloc] init] autorelease];
	contraction1.stop = [NSDate date];
	
	Contraction* contraction2 = [[[Contraction alloc] init] autorelease];
	contraction2.start =  [contraction1.stop addTimeInterval:5];
	
	STAssertEquals([contraction2 timeSince:contraction1], (NSTimeInterval) 5, nil);
}

@end
