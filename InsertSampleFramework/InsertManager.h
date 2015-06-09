//
//  InsertManager.h
//  InsertSampleFramework
//
//  Created by Oded Regev on 6/9/15.
//  Copyright (c) 2015 Insert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface InsertManager : NSObject

+ (instancetype) sharedManager;

- (void) startManager;
- (void) stopManager;

-(void) showMessageInViewController:(UIViewController *)viewController;

-(BOOL) isManagerRunning;

@end
