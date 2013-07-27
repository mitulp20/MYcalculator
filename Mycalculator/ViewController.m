//
//  ViewController.m
//  Mycalculator
//
//  Created by Mitul Patel on 7/25/13.
//  Copyright (c) 2013 xperttech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)decimalPressed:(id)sender{
    NSString *currentDigits = Mycalculatorscreen.text;
    Mycalculatorscreen.text = [currentDigits stringByAppendingString:@"."];
}

- (IBAction)buttonDigitPressed:(id)sender {
    if(userInMiddleOfTypingANumber == YES)
    {
        
        NSRange range = [Mycalculatorscreen.text rangeOfString:@"."];
            if([[[sender titleLabel]text] isEqual:@"."])
        
        {
            if (!(range.location ==NSNotFound)){
                
                }
                else
                {
                    NSString *currentDigits = Mycalculatorscreen.text;
                    Mycalculatorscreen.text = [currentDigits stringByAppendingString:@"."];}
            }
        else{
     NSString *currentDigits = Mycalculatorscreen.text;
    NSString *newDigit = [[sender titleLabel]text];
    Mycalculatorscreen.text=[currentDigits stringByAppendingString:newDigit];
    currentNumber=[Mycalculatorscreen.text floatValue];
         
        }}
    
    else
    {
        if([[[sender titleLabel]text] isEqual:@"."])
            
        {
            NSString *currentDigits = @"";
            Mycalculatorscreen.text = [currentDigits stringByAppendingString:@"."];
        }
        else{
            NSString *currentDigits = @"";
            NSString *newDigit = [[sender titleLabel]text];
            Mycalculatorscreen.text=[currentDigits stringByAppendingString:newDigit];
            currentNumber=[Mycalculatorscreen.text floatValue];
            
        }
        userInMiddleOfTypingANumber=YES;
    
    }
        }
    
//    currentNumber = currentNumber *10 + (float)[sender tag];
//    Mycalculatorscreen.text = [ NSString stringWithFormat:@"%2g" ,currentNumber];
    


- (IBAction)buttonOperationPressed:(id)sender {
    if (currentOperation == 0) result = currentNumber;
    else {
        switch (currentOperation) {
            case 1:
                result = result + currentNumber;
                userInMiddleOfTypingANumber = NO;
                break;
            case 2:
                result = result - currentNumber;
                userInMiddleOfTypingANumber = NO;
                break;
            case 3:
                result = result * currentNumber;
                userInMiddleOfTypingANumber = NO;
                break;
            case 4:
                result = result / currentNumber;
                userInMiddleOfTypingANumber = NO;
                break;
            case 5:
                currentOperation = 0;
                
                break;
            
        
        }
    }
    currentNumber = 0;
    Mycalculatorscreen.text = [NSString stringWithFormat:@"%2g" ,result];
    if ( [sender tag] == 0) result =0;
    currentOperation = [sender tag ];
    userInMiddleOfTypingANumber=NO;
         
    
}

-(IBAction)cancelInput {
    currentNumber = 0;
    Mycalculatorscreen.text = @"0";
}

- (IBAction) cancelOperation {
    currentNumber = 0;
    Mycalculatorscreen.text = @"0";
    currentOperation = 0;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
