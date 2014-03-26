//
//  WaypointManager.m
//  TrackerApp
//
//  Created by FlyinGeek on 3/25/14.
//  Copyright (c) 2014 FlyinGeek. All rights reserved.
//

#import "WaypointManager.h"

@interface WaypointManager ()

@property (nonatomic, readwrite) NSMutableArray *waypoints;

@end


@implementation WaypointManager

-(instancetype)init
{
    self = [super init];
    if (self) {
        self.waypoints = [[NSMutableArray alloc] init];
    }
    return self;
}

+ (instancetype)sharedManager
{
    static dispatch_once_t p = 0;
    
    __strong static id _sharedObject = nil;
    
    dispatch_once(&p, ^{
        _sharedObject = [[self alloc] init];
    });

    return _sharedObject;
}

- (void)addAWaypoint:(Waypoint *)waypoint
{
    [self.waypoints addObject:waypoint];
}

- (NSMutableArray *)waypoints
{
    return _waypoints;
}


@end
