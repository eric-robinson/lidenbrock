//
//  NSManagedObjectContext+Lidenbrock.h
//  Lidenbrock
//
//  Created by feeef on 11/04/11.
//  Copyright 2011 Six Degrees. All rights reserved.
//
#if TARGET_OS_IPHONE
#import <UIKit/UIKit.h>
#else
#import <Cocoa/Cocoa.h>
#endif
#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "LBObjectManager.h"

@interface NSManagedObjectContext (Lidenbrock)

+ (NSManagedObjectContext *) defaultContext;

+ (BOOL) saveDefaultContext;

@end
