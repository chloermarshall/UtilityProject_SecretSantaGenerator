//
//  SSViewController.h
//  UtilityProject
//
//  Created by Chloe Marshall on 3/28/17.
//  Copyright © 2017 Chloe Marshall. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SSViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (weak, nonatomic) IBOutlet UILabel *label4;
@property (weak, nonatomic) IBOutlet UILabel *label5;
@property (nonatomic, retain) NSMutableArray *ssArray;
- (NSString *) returnSSPair: (NSArray *) array;
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;
- (void) updateLabels;
- (IBAction)resetButton:(id)sender;

@end
