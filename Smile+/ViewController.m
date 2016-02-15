//
//  ViewController.m
//  Smile+
//
//  Created by George Ashton on 04/11/2014.
//  Copyright (c) 2014 George Ashton. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Label.text = [NSString stringWithFormat:@"%d", Number]; // Number of smiles
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)showActivityView:(id)sender { // Share
    NSNumberFormatter *nf = [NSNumberFormatter  new];
    nf.numberStyle = NSNumberFormatterDecimalStyle;
    nf.maximumFractionDigits = 0; //how many positions after the decimal?
    nf.groupingSeparator = @",";
    nf.groupingSize = 3;
    NSString *shareText = [NSString stringWithFormat:@"I got %@ smiles today :)", [nf stringFromNumber:@(Number)]]; // Share message which pulls the number of smiles
    NSArray *itemsToShare = @[shareText];
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:itemsToShare                                                                                                applicationActivities:nil];
    activityVC.excludedActivityTypes = @[];
    [self presentViewController:activityVC animated:YES completion:nil];
}

-(IBAction)Addition:(id)sender{ // +1 Button
    Number +=1;
    Label.text = [NSString stringWithFormat:@"%d", Number];
    
}

-(IBAction)Subtraction:(id)sender{ // -1 Button
    Number -=1;
    
    if (Number < 0) { // if number goes below 0
        Number = 0; // number is equal to 0, stopping it from ever going below 0
        
    }
    Label.text = [NSString stringWithFormat:@"%d", Number];
    
}


-(IBAction)Reset:(id)sender { // Reset Button
   
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:(@"Reset") message:(@"Are you sure you want to reset?") delegate:(nil) cancelButtonTitle:(@"No") otherButtonTitles:(@"Yes"), nil];
//    [alert show];
    
    Number = 0;
    Label.text = [NSString stringWithFormat:@"%d", Number];
    
   
    
   
}

#pragma mark iAd Delegate Methods

-(void)bannerViewDidLoadAd:(ADBannerView *)banner { // Ads
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1];
    
    [banner setAlpha:1];
    
    [UIView commitAnimations];
    
}

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error { // Ads
   
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1];
    
    [banner setAlpha:0];
    
    [UIView commitAnimations];
}


@end
