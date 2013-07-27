//
//  ViewController.h
//  Mycalculator
//
//  Created by Mitul Patel on 7/25/13.
//  Copyright (c) 2013 xperttech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    float result;
    IBOutlet UILabel *Mycalculatorscreen;
    IBOutlet UIImage *imageview;
    int currentOperation;
    float currentNumber;
    BOOL userInMiddleOfTypingANumber;
    
}

-(IBAction)buttonDigitPressed: (id)sender;
-(IBAction)buttonOperationPressed: (id)sender;
-(IBAction)cancelInput;
-(IBAction)cancelOperation;
-(IBAction)decimalPressed:(id)sender;

@end
