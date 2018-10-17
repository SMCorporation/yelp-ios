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
        _startTime = [self timeIntervalFromHoursAndMinutes:[dayDict[@"start"] integerValue]];
        _endTime = [self timeIntervalFromHoursAndMinutes:[dayDict[@"end"] integerValue]];
    }
    return self;
}

- (NSTimeInterval)timeIntervalFromHoursAndMinutes:(NSInteger)hoursAndMinutes {
    NSInteger hours = (hoursAndMinutes / 100) % 100;
    NSInteger minutes = hoursAndMinutes % 100;
    NSInteger secondsInOneHour = 3600;
    NSInteger secondsInOneMinute = 60;
    
    return hours * secondsInOneHour + minutes * secondsInOneMinute;
}


@end
