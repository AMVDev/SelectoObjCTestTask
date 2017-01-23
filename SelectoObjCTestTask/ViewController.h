//
//  ViewController.h
//  SelectoObjCTestTask
//
//  Created by andreworphan on 22.01.17.
//  Copyright © 2017 andreworphan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property NSMutableData *receivedData;
@property (weak, nonatomic) IBOutlet UITextField *textToTranslate;
@property (weak, nonatomic) IBOutlet UILabel *translatedText;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tap;

-(IBAction)getTranslateButton:(id)sender;

@end

