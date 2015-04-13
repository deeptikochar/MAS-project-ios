//
//  ViewController.m
//  MAS project
//
//  Created by Aditya Kadur on 3/26/15.
//  Copyright (c) 2015 CODEZ. All rights reserved.
//

#import "MapViewController.h"
@interface MapViewController()

@end

@implementation MapViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"The code runs through here1!");
    self.mapView.myLocationEnabled = YES;
    self.mapView.mapType = kGMSTypeNormal;
    self.mapView.settings.compassButton = YES;
    self.mapView.settings.myLocationButton = YES;
    CLLocationCoordinate2D target = CLLocationCoordinate2DMake(33.775635, -84.396444);
    self.mapView.camera = [GMSCameraPosition cameraWithTarget:target zoom:14];
    self.mapView.delegate = self;
    
//    GMSCameraPosition *gatech = [GMSCameraPosition cameraWithLatitude:33.775635
//                                                            longitude:-84.396444
//                                                                 zoom:14];
//    [self.mapView setCamera:gatech];
    
    NSString *heatmapURL = @"http://173.236.254.243:8080/heatmaps/positive?lat=32.725371&lng= -117.160721&radius=2500&total=2";
    NSURLSession *session = [NSURLSession sharedSession];
    [[session dataTaskWithURL:[NSURL URLWithString:heatmapURL]
            completionHandler:^(NSData *data,
                                NSURLResponse *response,
                                NSError *error) {
                // handle response
                
            }] resume];
    NSLog(@"The code runs through here!");
}

- (void) didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
@end