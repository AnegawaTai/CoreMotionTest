//
//  ViewController.h
//  accel_test
//
//  Created by christ_saga on 27/02/2014.
//  Copyright (c) 2014 christ_saga. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>



@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *Titlelabel;
@property (strong, nonatomic) IBOutlet UILabel *Accelxlabel;
@property (strong, nonatomic) IBOutlet UILabel *Accelylabel;
@property (strong, nonatomic) IBOutlet UILabel *Accelzlabel;

@property (strong, nonatomic) IBOutlet UILabel *Rotxlabel;
@property (strong, nonatomic) IBOutlet UILabel *Rotylabel;
@property (strong, nonatomic) IBOutlet UILabel *Rotzlabel;

@property (strong, nonatomic) CMMotionManager *motionManager;

@end
