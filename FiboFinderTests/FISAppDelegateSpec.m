//  FISAppDelegateSpec.m

#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "FISAppDelegate.h"

SpecBegin(FISAppDelegate)

describe(@"FISAppDelegate", ^{
    
    __block FISAppDelegate *appDelegate;
    
    beforeEach(^{
        
        appDelegate = [[FISAppDelegate alloc] init];
    });
    
    describe(@"arrayWithFibonacciSequenceToIndex:", ^{
        it(@"should return an array with @0 when the argument is zero",^{
            NSArray *sequence = [appDelegate arrayWithFibonacciSequenceToIndex:0];
            
            expect(sequence).to.equal(@[@0]);
        });
        
        it(@"should return an array with @0, @1 when argument is 1",^{
            NSArray *sequence = [appDelegate arrayWithFibonacciSequenceToIndex:1];
            
            expect(sequence).to.equal(@[@0, @1]);
        });
        
        it(@"should return an array with @0, @1, @1, @2, @3, @5 when the argument is 5",^{
            NSArray *sequence = [appDelegate arrayWithFibonacciSequenceToIndex:5];
            
            expect(sequence).to.equal(@[@0, @1, @1, @2, @3, @5]);
        });
        
        it(@"should return an array with 13 objects whose last object is @144 when the argument is 12",^{
            NSArray *sequence = [appDelegate arrayWithFibonacciSequenceToIndex:12];
            
            expect(sequence.count).to.equal(13);
            expect([sequence lastObject]).to.equal(@144);
        });
        
        it(@"should return an array with 29 objects whose last object is @317811 when the argument is 28",^{
            NSArray *sequence = [appDelegate arrayWithFibonacciSequenceToIndex:28];
            
            expect(sequence.count).to.equal(29);
            expect([sequence lastObject]).to.equal(@317811);
        });
        
//        it(@"should return an array with 51 objects whose last object is @12586269025 when the argument is 50", ^{
//            NSArray *sequence = [appDelegate arrayWithFibonacciSequenceToIndex:50];
//            
//            expect(sequence.count).to.equal(51);
//            expect([sequence lastObject]).to.equal(12586269025);
//        });
    });
});

SpecEnd
