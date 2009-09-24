#import "GTMSenTestCase.h"
#import "ContractionListing.h"

@interface ContractionListingTest : GTMTestCase
{
	ContractionListing *contractions;
}

-(void) haveContraction;
-(NSMutableArray *) enumeratedContractions;

@end
