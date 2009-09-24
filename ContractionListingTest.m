#import "ContractionListingTest.h"
#import "Contraction.h"

@implementation ContractionListingTest

-(void) setUp
{
	contractions = [[ContractionListing alloc] init];
}

-(void) tearDown
{
	[contractions release];
}

-(void) testSharedContractionListingReturnsObject
{
	STAssertNotNil([ContractionListing sharedListing], nil);
}

-(void) testSharedContractionListingReturnsSameObject
{
	STAssertEqualObjects([ContractionListing sharedListing], 
											 [ContractionListing sharedListing],
											 nil);
}

-(void) testStartingContractionAddsOneToList
{
	[contractions startContraction];
	
	STAssertEquals([contractions count], 1, nil);
}

-(void) testEnumerateThroughOneContraction
{
	int count = 0;
	[contractions startContraction];
	
	for (Contraction *contraction in contractions)
	{
		count++;
	}
	
	STAssertEquals(1, count, nil);
}

-(void) testStartContrationHasStartTimeNoEndTime
{
	[contractions startContraction];
	
	for (Contraction *contraction in contractions)
	{
		NSTimeInterval interval = [contraction.start timeIntervalSinceNow];
		STAssertEqualsWithAccuracy((NSTimeInterval) 0, interval, 1,  nil);
	}
}

-(void) testStopContractionEndsContractionNow
{
	[self haveContraction];
	
	for (Contraction *contraction in contractions)
	{
		NSTimeInterval interval = [contraction.stop timeIntervalSinceNow];
		STAssertEqualsWithAccuracy((NSTimeInterval) 0, interval, 1,  nil);
	}
}

-(void) testEnumeratesInDescendingOrder
{
	[self haveContraction];
	sleep(1);
	[self haveContraction];
	
	NSMutableArray *enumeratedContractions = [self enumeratedContractions];

	NSDate *firstContractionTime = [(Contraction *)[enumeratedContractions objectAtIndex:0] start];
	NSDate *secondContractionTime = [(Contraction *)[enumeratedContractions objectAtIndex:1] start];
	STAssertEqualObjects([firstContractionTime laterDate:secondContractionTime], firstContractionTime, nil);
}

-(void) haveContraction
{
	[contractions startContraction];
	[contractions stopContraction];
}

-(NSMutableArray *) enumeratedContractions
{
	NSMutableArray *enumeratedContractions = [NSMutableArray arrayWithCapacity:10];
	for (Contraction *contraction in contractions)
	{	
		[enumeratedContractions addObject:contraction];
	}
	
	return enumeratedContractions;
}	

@end
