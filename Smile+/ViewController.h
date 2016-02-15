//
//  ViewController.h
//  Smile+
//
//  Created by George Ashton on 04/11/2014.
//  Copyright (c) 2014 George Ashton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface ViewController : UIViewController <ADBannerViewDelegate> {
    IBOutlet UILabel *Label;
    
    int Number;
}
- (IBAction)showActivityView:(id)sender;

-(IBAction)Addition:(id)sender;
-(IBAction)Subtraction:(id)sender;
-(IBAction)Reset:(id)sender;



@end

