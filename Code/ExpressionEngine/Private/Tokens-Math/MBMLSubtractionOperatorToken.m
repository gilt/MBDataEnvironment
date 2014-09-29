//
//  MBMLSubtractionOperatorToken.m
//  Mockingbird Data Environment
//
//  Created by Evan Coyne Maloney on 2/20/13.
//  Copyright (c) 2013 Gilt Groupe. All rights reserved.
//

#import "MBMLSubtractionOperatorToken.h"

#define DEBUG_LOCAL         0

/******************************************************************************/
#pragma mark -
#pragma mark MBMLSubtractionOperatorToken implementation
/******************************************************************************/

@implementation MBMLSubtractionOperatorToken

- (id) init
{
    return [super initWithOperatorCharacter:'-'];
}

- (NSUInteger) precedence
{
    return 2;
}

- (NSDecimalNumber*) numericValueForLeftValue:(NSDecimalNumber*)lValue rightValue:(NSDecimalNumber*)rValue
{
    debugTrace();
    
    return [lValue decimalNumberBySubtracting:rValue];
}

@end