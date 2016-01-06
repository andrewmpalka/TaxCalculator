//
//  ViewController.m
//  TaxCalclulator App
//
//  Created by Andrew Palka on 1/5/16.
//  Copyright © 2016 Andrew Palka. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property double caTax;
@property double chiTax;
@property double nyTax;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    _caTax = .075;
    _chiTax = .0925;
    _nyTax = .045;

}
- (IBAction)onCalculateButtonTapped:(id)sender {
    double input = [_priceTextField.text intValue];
    
    switch (_segmentedControl.selectedSegmentIndex) {
      
        case 0: {
            double tax = _caTax;
            _resultLabel.text = [NSString stringWithFormat:@"%.2f", (input * tax)];
            break;
        }
        case 1: {
            double tax = _chiTax;
            _resultLabel.text = [NSString stringWithFormat:@"%.2f", (input * tax)];
            break;
        }
        case 2: {
            double tax = _nyTax;
            _resultLabel.text = [NSString stringWithFormat:@"%.2f", (input * tax)];
            break;
        }
    }
}
@end
