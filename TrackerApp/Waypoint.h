//
//  Waypoint.h
//  TrackerApp
//
//  Created by FlyinGeek on 3/25/14.
//  Copyright (c) 2014 FlyinGeek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Waypoint : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) float latitude;
@property (nonatomic) float longitude;

- (instancetype)initWithName:(NSString *)name
                    latitude:(float)latitude
                   longitude:(float)longitude;

@end
