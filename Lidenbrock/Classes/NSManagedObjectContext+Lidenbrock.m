//
//  NSManagedObjectContext+Lidenbrock.m
//  Lidenbrock
//
//  Created by feeef on 11/04/11.
//  Copyright 2011 Six Degrees. All rights reserved.
//

#import "NSManagedObjectContext+Lidenbrock.h"

@implementation NSManagedObjectContext (Lidenbrock)

/***********************************************************************************************************
 */
+ (NSManagedObjectContext *) defaultContext
{
    
    // Get context
    //
    NSError *error = NULL;
    
    #if TARGET_OS_IPHONE
    NSManagedObjectContext *context = (NSManagedObjectContext*)[LBObjectManager getValueFromProperty: @"managedObjectContext"
                                                                                            inObject: [[UIApplication sharedApplication] delegate] 
                                                                                               error: &error];
    #else
    NSManagedObjectContext *context = (NSManagedObjectContext*)[LBObjectManager getValueFromProperty: @"managedObjectContext"
                                                                                            inObject: [[NSApplication sharedApplication] delegate] 
                                                                                               error: &error];
    
    #endif
	return context;
}

/***********************************************************************************************************
 */
+ (BOOL) saveDefaultContext
{
    // Save the objects in the data store
    //
    NSManagedObjectContext *context = [NSManagedObjectContext defaultContext];
    
    NSError *error = nil;
	if (![context save: &error]) {
		NSLog(@"Error saving data context: %@", [error localizedDescription]);
        return NO;
	}
    else {
        return YES;
    }
}

@end
