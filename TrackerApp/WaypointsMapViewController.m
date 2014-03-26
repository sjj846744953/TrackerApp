//
//  WaypointsMapViewController.m
//  TrackerApp
//
//  Created by FlyinGeek on 3/25/14.
//  Copyright (c) 2014 FlyinGeek. All rights reserved.
//

#import "Waypoint.h"
#import "WaypointManager.h"
#import "WaypointsMapViewController.h"

@interface WaypointsMapViewController () <MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;


@end

@implementation WaypointsMapViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.mapView.delegate = self;
    
    WaypointManager *manager = [WaypointManager sharedManager];
    NSMutableArray *waypoints = [manager waypoints];
    
    for (Waypoint *waypoint in waypoints) {
        
        MKPointAnnotation *point = [MKPointAnnotation new];
        point.coordinate = CLLocationCoordinate2DMake(waypoint.latitude, waypoint.longitude);
        point.title = waypoint.name;
        
        [self.mapView addAnnotation:point];
    }
    
}

/*
- (MKAnnotationView *)mapView:(MKMapView *)mapView
            viewForAnnotation:(id <MKAnnotation>)
{

    
}
*/

@end
