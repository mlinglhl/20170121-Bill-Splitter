//
//  ViewController.m
//  20170121 Bill Splitter
//
//  Created by Minhung Ling on 2017-01-21.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property NSNumberFormatter *formatter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.formatter = [NSNumberFormatter new];
    [self.formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
}

- (IBAction)calculate:(UIButton *)sender {
    float cost = [self.textField.text floatValue];
    self.label.text = [self.formatter stringFromNumber:@(cost/self.slider.value)];
}

- (IBAction)changePeople:(UISlider *)sender {
    self.slider.value = round(self.slider.value);
    self.sliderLabel.text = [NSString stringWithFormat:@"%.0f", self.slider.value];
    float cost = [self.textField.text floatValue];
    self.label.text = [self.formatter stringFromNumber:@(cost/self.slider.value)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
