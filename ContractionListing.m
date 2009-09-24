#import "ContractionListing.h"
#import "Contraction.h"

static ContractionListing *sharedListing = nil;

@implementation ContractionListing

+(id) sharedListing
{
	if (sharedListing == nil)
	{
		sharedListing = [[[ContractionListing alloc] init] autorelease];
	}
	
	return sharedListing;
}

-(id) init
{
	if(self == [super init])
	{
		contractionList = [[NSMutableArray alloc] initWithCapacity: 20];
	}
	
	return self;
}

-(void) startContraction
{
	Contraction *contraction = [[Contraction alloc] init];
	contraction.start = [NSDate date];
	[contractionList insertObject:contraction atIndex:0];
	[contraction release];
}

-(void) stopContraction
{
}

-(int) count
{
	return [contractionList count];
}

-(NSUInteger) countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(id *)stackbuf count:(NSUInteger)len
{
	return [contractionList countByEnumeratingWithState:state objects:stackbuf count:len];
}

@end
