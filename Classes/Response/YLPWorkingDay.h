//
//  YLPWorkingDay.h
//  YelpAPI
//
//  Created by Max on 10/16/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YLPWorkingDay : NSObject

@property (nonatomic, readonly) NSUInteger dayNumber;
@property (nonatomic, readonly) NSTimeInterval startTime;
@property (nonatomic, readonly) NSTimeInterval endTime;
@property (nonatomic, getter=isOvernight, readonly) BOOL overnight;

@end

NS_ASSUME_NONNULL_END
