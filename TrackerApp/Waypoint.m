//
//  Waypoint.m
//  TrackerApp
//
//  Created by FlyinGeek on 3/25/14.
//  Copyright (c) 2014 FlyinGeek. All rights reserved.
//

#import "Waypoint.h"

@implementation Waypoint

/*
@synthesize name = _name;

- (void)setName:(NSString *)name
{
    _name = name;
}

- (NSString *)name
{
    return _name;
}
 */

-(instancetype)initWithName:(NSString *)name latitude:(float)latitude longitude:(float)longitude
{
    self = [super init];
    
    if (self != nil) {
        self.name = name;
        self.latitude = latitude;
        self.longitude = longitude;
    }

    return self;
}

@end
