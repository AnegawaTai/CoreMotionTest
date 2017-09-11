//
//  ViewController.m
//  accel_test
//
//  Created by christ_saga on 27/02/2014.
//  Copyright (c) 2014 christ_saga. All rights reserved.
//

// Last updated 11/09/2017
// Xcode9
// used for github test

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize Titlelabel;
@synthesize Accelxlabel;
@synthesize Accelylabel;
@synthesize Accelzlabel;

@synthesize Rotxlabel;
@synthesize Rotylabel;
@synthesize Rotzlabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.Titlelabel.text = @"Acceleration and Rotation Test";
    
    self.motionManager = [[CMMotionManager alloc] init];
    self.motionManager.accelerometerUpdateInterval = 0.2;
    self.motionManager.gyroUpdateInterval = 0.2;
    
    [self.motionManager startAccelerometerUpdatesToQueue:[NSOperationQueue currentQueue]
                                             withHandler:^(CMAccelerometerData  *accelerometerData, NSError *error)
    {
         [self outputAccelertionData:accelerometerData.acceleration];
            if(error)
            {
                NSLog(@"%@", error);
            }
        
    }];
    
    [self.motionManager startGyroUpdatesToQueue:[NSOperationQueue currentQueue]
                                    withHandler:^(CMGyroData *gyroData, NSError *error)
    {
        [self outputRotationData:gyroData.rotationRate];
            if(error)
            {
                NSLog(@"%@", error);
            }
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)outputAccelertionData:(CMAcceleration)acceleration
{
    
    self.Accelxlabel.text = [NSString stringWithFormat:@"Accel x: %.2fg",acceleration.x];

    self.Accelylabel.text = [NSString stringWithFormat:@"Accel y: %.2fg",acceleration.y];

    self.Accelzlabel.text = [NSString stringWithFormat:@"Accel z: %.2fg",acceleration.z];

    
    
}
-(void)outputRotationData:(CMRotationRate)rotation
{
    self.Rotxlabel.text = [NSString stringWithFormat:@"Rot x: %.2fr/s",rotation.x];

    self.Rotylabel.text = [NSString stringWithFormat:@"Rot y: %.2fr/s",rotation.y];

    self.Rotzlabel.text = [NSString stringWithFormat:@"Rot z:  %.2fr/s",rotation.z];
}

@end
