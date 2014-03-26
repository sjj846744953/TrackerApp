//
//  WaypointCreationViewController.m
//  TrackerApp
//
//  Created by FlyinGeek on 3/25/14.
//  Copyright (c) 2014 FlyinGeek. All rights reserved.
//

#import "Waypoint.h"
#import "WaypointManager.h"
#import "WaypointCreationViewController.h"

@interface WaypointCreationViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UILabel *latitudeLabel;
@property (weak, nonatomic) IBOutlet UILabel *longitudeLabel;

@property (nonatomic) CLLocationManager *locationManager;

@end

@implementation WaypointCreationViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.nameTextField.delegate = self;
    
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    
    [self.locationManager startUpdatingLocation];
}

- (IBAction)userDidTapOnBackground:(id)sender {
    
    [self.nameTextField resignFirstResponder];
}

- (IBAction)creationButtonPressed:(id)sender {
    
    Waypoint *newWaypoint = [[Waypoint alloc] initWithName:self.nameTextField.text latitude:[self.latitudeLabel.text floatValue] longitude:[self.longitudeLabel.text floatValue]];
    
    WaypointManager *waypointManager = [WaypointManager sharedManager];
    
    [waypointManager addAWaypoint:newWaypoint];
}

#pragma CLLocationManager delegates methods

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    NSLog(@"%@", locations[0]);
    
    CLLocation *userLocation = locations[0];
    self.latitudeLabel.text = [NSString stringWithFormat:@"%f", userLocation.coordinate.latitude];
    self.longitudeLabel.text = [NSString stringWithFormat:@"%f", userLocation.coordinate.longitude];
    
}



- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
















@end
