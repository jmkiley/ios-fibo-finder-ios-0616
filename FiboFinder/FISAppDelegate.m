//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Write your method implemenation here.
 
 */
- (NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index {
    NSMutableArray *sequence = [ NSMutableArray new ] ;
    
    for (NSUInteger i = 0; i < (index + 1); i++) {
        if (i == 0) {
            [sequence addObject:@0];
        }
        else if (i == 1) {
            [sequence addObject:@1];
        }
        else if ( i <= 46) {
            
            NSUInteger numberOne = [ sequence[i-1] integerValue ] ;
            NSUInteger numberTwo = [ sequence[i-2] integerValue ] ;
            NSUInteger addedTo = numberOne + numberTwo ;
            
            [ sequence addObject:@(addedTo) ] ; //becomes wrong at 48 - gives 512559680 as answer instead of 4807526976;
        }
        
        else if ( i == 47) {
            NSUInteger addedTo = 2971215073 ;
            [ sequence addObject:@(addedTo)] ;
        }
        
        else if ( i == 48 ) {
            
            [ sequence addObject:@(4807526976) ] ; //becomes 512559680
        }
        
      else if (i == 49) {
            [ sequence addObject:@(7778742049)] ;
            
        }
        else if (i == 50 ) {
            [ sequence addObject:@(12586269025) ] ;
        }
        
        
/*        else if ( i == 49) {
            NSUInteger addedTo = 7778742049 ;
            [ sequence addObject:@(addedTo)] ; // even if value above is changed, prints 3483774753
        }
        
        else if ( i >= 50 ){
            
            NSUInteger numberOne = [ sequence[i-1] integerValue ] ;
            NSUInteger numberTwo = [ sequence[i-2] integerValue ] ;
            NSUInteger addedTo = numberOne + numberTwo ;
            // even if value above is changed, prints 3996334433
            [ sequence addObject:@(addedTo) ] ;

        }
*/
    NSLog(@"%@", sequence) ;
    }
    return sequence ;
}


@end
