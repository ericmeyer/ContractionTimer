#import "ContractionTest.h"
#import "Contraction.h"

@implementation ContractionTest

-(void) testTimeIntervalBetweenContractions
{
	NSDate *endTimeContractionOne = [NSDate date];
	NSDate *startTimeContractionTwo = [endTimeContractionOne addTimeInterval:5];
	
	Contraction* contraction1 = [[[Contraction alloc] init] autorelease];
	contraction1.stop = endTimeContractionOne;
	
	Contraction* contraction2 = [[[Contraction alloc] init] autorelease];
	contraction2.start = startTimeContractionTwo;
	
	STAssertEquals([contraction2 timeSince:contraction1], (NSTimeInterval) 5, nil);
}

-(void) testLengthOfContraction
{
	Contraction *contraction = [[[Contraction alloc] init] autorelease];
	contraction.start = [NSDate date];
	contraction.stop = [contraction.start addTimeInterval:5];
	
	STAssertEquals([contraction length], 5, nil);
}
@end
