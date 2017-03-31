//
//  ViewController.m
//  UtilityProject
//
//  Created by Chloe Marshall on 3/28/17.
//  Copyright © 2017 Chloe Marshall. All rights reserved.
//

#import "ViewController.h"
#import "SSViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize nameArray;
int nameLeftCount = 10;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    self.nameArray = array;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)addNameButton:(id)sender {
    NSString *userInput = [[NSString alloc] initWithString:[_textField text]];
    [nameArray addObject:userInput];
    nameLeftCount--;
    _namesLeftLabel.text = [[NSString alloc] initWithFormat:@"You have %d names left to add", nameLeftCount];
    _namesLeftLabel.hidden = false;
    
    
    _textField.text = @"";
    NSLog(@"%@", nameArray);
    
}

- (IBAction)generateSSButton:(id)sender {
    
}

- (IBAction)doneWithKeyboard:(id)sender {
    [self resignFirstResponder];
}
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"showDetailSegue"]){
        SSViewController *ssVC = (SSViewController *) segue.destinationViewController;
        ssVC.ssArray = self.nameArray;
    }
}
@end
