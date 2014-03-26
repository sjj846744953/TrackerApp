//
//  WaypointManager.h
//  TrackerApp
//
//  Created by FlyinGeek on 3/25/14.
//  Copyright (c) 2014 FlyinGeek. All rights reserved.
//

#import "Waypoint.h"
#import <Foundation/Foundation.h>

@interface WaypointManager : NSObject

+ (instancetype)sharedManager;

- (void)addAWaypoint:(Waypoint *)waypoint;

- (NSMutableArray *)waypoints;

@end
