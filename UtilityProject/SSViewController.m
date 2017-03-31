//
//  SSViewController.m
//  UtilityProject
//
//  Created by Chloe Marshall on 3/28/17.
//  Copyright © 2017 Chloe Marshall. All rights reserved.
//

#import "SSViewController.h"

@interface SSViewController ()

@end

@implementation SSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateLabels];
    NSLog(@"%@", _ssArray);
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) updateLabels {
    _label1.text = [self returnSSPair: _ssArray];
     NSLog(@"Outside of method: %@",_ssArray);
    _label2.text = [self returnSSPair: _ssArray];
     NSLog(@"Outside of method: %@", _ssArray);
    _label3.text = [self returnSSPair: _ssArray];
     NSLog(@"Outside of method: %@", _ssArray);
    _label4.text = [self returnSSPair: _ssArray];
     NSLog(@"Outside of method: %@", _ssArray);
    _label5.text = [self returnSSPair: _ssArray];
     NSLog(@"Outside of method: %@", _ssArray);
}

- (NSString *) returnSSPair: (NSMutableArray *) ssArray{
    NSString *returnValue = [[NSString alloc] init];
    if(ssArray.count == 2){
        returnValue = [NSString stringWithFormat: @"%@ & %@", [ssArray objectAtIndex: 0], [ssArray objectAtIndex: 1]];
        return returnValue;
    }
    NSInteger randNum1 = arc4random() % [ssArray count];
    NSInteger randNum2 = arc4random() % [ssArray count];
    
    
    while(randNum1 == randNum2) {
        
        randNum1 = arc4random() % [ssArray count];
        randNum2 = arc4random() % [ssArray count];
    
    }
    
    returnValue = [NSString stringWithFormat: @"%@ & %@", [ssArray objectAtIndex:randNum1], [ssArray objectAtIndex:randNum2]];
    NSMutableIndexSet *indexes = [NSMutableIndexSet indexSetWithIndex:randNum1];
    [indexes addIndex: randNum2];
    [_ssArray removeObjectsAtIndexes: indexes];
    

    
        NSLog(@"Inside of method: %@", ssArray);
        
        return returnValue;
    }


@end
