//
//  YLPWorkingDay.m
//  YelpAPI
//
//  Created by Max on 10/16/18.
//

#import "YLPWorkingDay.h"

@implementation YLPWorkingDay

- (instancetype)initWithDictionary:(NSDictionary *)dayDict {
    if (self = [super init]) {
        _overnight = [((NSString *)dayDict[@"is_overnight"]) boolValue];
        _dayNumber = [((NSString *)dayDict[@"day"]) integerValue];
        _startTime = [dayDict[@"start"] doubleValue];
        _endTime = [dayDict[@"end"] doubleValue];
    }
    return self;
}


@end
