//
//  YLPAppDelegate.m
//  YelpAPI
//
//  Created by David Chen on 12/07/2015.
//  Copyright (c) 2015 David Chen. All rights reserved.
//

#import "YLPAppDelegate.h"

@import YelpAPI;

@interface YLPAppDelegate ()
@property (strong, nonatomic) YLPClient *client;
@end

@implementation YLPAppDelegate

+ (YLPClient *)sharedClient {
    YLPAppDelegate *appDelegate = (YLPAppDelegate *)[UIApplication sharedApplication].delegate;
    return appDelegate.client;
}

#pragma mark UIApplicationDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.client = [[YLPClient alloc] initWithAPIKey:@"0DQ588MgqUFqk3AxVzGPQHG6gVXP5CYsiOi3vBU-rrGPwdbdlXxl36vaFe9Z7dDaNKkxHAocphrFHFo8RSYCe_Ii0UYGjVqVYoGs2ip75crerPy8Zb_PDHjKiaDEW3Yx"];
    [self.client businessWithId:@"hui-restaurant-and-bar-new-york" completionHandler:^(YLPBusiness * _Nullable business, NSError * _Nullable error) {
        
    }];

    return YES;
}

@end
