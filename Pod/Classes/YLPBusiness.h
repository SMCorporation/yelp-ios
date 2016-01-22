//
//  Business.h
//  Pods
//
//  Created by David Chen on 1/5/16.
//
//
NS_ASSUME_NONNULL_BEGIN

@interface YLPBusiness : NSObject

@property (nonatomic, getter=isClaimed, readonly) BOOL claimed;
@property (nonatomic, getter=isClosed, readonly) BOOL closed;

@property (nonatomic, readonly, copy) NSURL *snippetImageURL;
@property (nonatomic, readonly, copy) NSURL *ratingImgURL;
@property (nonatomic, readonly, copy) NSURL *ratingImgURLSmall;
@property (nonatomic, readonly, copy) NSURL *ratingImgURLLarge;
@property (nonatomic, readonly, copy) NSURL *mobileURL;
@property (nonatomic, readonly, nullable, copy) NSURL *imageURL;
@property (nonatomic, readonly, copy) NSURL *URL;
@property (nonatomic, readonly, copy, nullable) NSURL *reservationURL;
@property (nonatomic, readonly, copy, nullable) NSURL *eat24URL;


@property (nonatomic, readonly) double rating;
@property (nonatomic, readonly) NSUInteger reviewCount;

@property (nonatomic, readonly, nullable, copy) NSString *snippetText;
@property (nonatomic, readonly, nullable, copy) NSString *menuProvider;
@property (nonatomic, readonly, nullable, copy) NSString *displayPhone;
@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly, nullable, copy) NSString *phone;
@property (nonatomic, readonly, copy) NSString *identifier;

@property (nonatomic, readonly, nullable, copy) NSDate *menuDateUpdated;

//TODO: Convert these to actual objects
@property (nonatomic, readonly, copy) NSMutableArray *categories;
@property (nonatomic, readonly, nullable, copy) NSMutableArray *reviews;
@property (nonatomic, readonly, copy) NSMutableArray *location;
@property (nonatomic, readonly, nullable, copy) NSMutableArray *giftCertificates;
@property (nonatomic, readonly, nullable, copy) NSMutableArray *deals;

@end

NS_ASSUME_NONNULL_END