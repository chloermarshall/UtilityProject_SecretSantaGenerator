//
//  ViewController.h
//  UtilityProject
//
//  Created by Chloe Marshall on 3/28/17.
//  Copyright © 2017 Chloe Marshall. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController{
    NSMutableArray *nameArray;
}

@property (nonatomic, retain) NSMutableArray *nameArray;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *namesLeftLabel;
- (IBAction)addNameButton:(id)sender;
- (IBAction)generateSSButton:(id)sender;
- (IBAction)doneWithKeyboard:(id)sender;
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;
@end

