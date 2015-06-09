//
//  InsertManager.m
//  InsertSampleFramework
//
//  Created by Oded Regev on 6/9/15.
//  Copyright (c) 2015 Insert. All rights reserved.
//

#import "InsertManager.h"
#import "CustomView.h"

@interface InsertManager()

@property (nonatomic) BOOL isEnabled;

@end


@implementation InsertManager

+ (instancetype) sharedManager {
    static InsertManager *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[[self class] alloc] init];
    });
    return sharedManager;
}

- (void) startManager {
    NSLog(@"Manager is running");
    _isEnabled = YES;
}

- (void) stopManager {
    _isEnabled = NO;
}

-(BOOL) isManagerRunning {
    return _isEnabled;
}

-(void) showMessageInViewController:(UIViewController *)viewController {
    NSBundle* frameworkBundle = [NSBundle bundleForClass:[self class]];
    CustomView *csView = [[frameworkBundle loadNibNamed:@"CustomView" owner:self options:nil] firstObject];
    [viewController.view addSubview:csView];
}

@end
