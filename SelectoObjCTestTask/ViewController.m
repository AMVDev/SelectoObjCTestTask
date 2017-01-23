//
//  ViewController.m
//  SelectoObjCTestTask
//
//  Created by andreworphan on 22.01.17.
//  Copyright © 2017 andreworphan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)getTranslateButton:(id)sender
{
    NSError *error;
    NSString *newText = [
                         _textToTranslate.text stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLPathAllowedCharacterSet]
                         ];
    NSString *key = [
                     @"trnsl.1.1.20170117T033624Z.594c360e1b2b6983.0b0a8278c3947186f7332b20738b831da1812ff4" stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLPathAllowedCharacterSet]
                     ];
    NSString *urlString = [
                           NSString stringWithFormat:
                           @"https://translate.yandex.net/api/v1.5/tr.json/translate?key=%@&lang=ru-en&text=%@",key,newText
                           ];
    
    NSData *data = [NSData dataWithContentsOfURL: [NSURL URLWithString:urlString]];
    
    if(data) {
        
        NSMutableArray *jsn = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        
        if(error) {
            
        }
        else {
            _translatedText.text = [NSString stringWithFormat:@"%@", [jsn valueForKey:@"text"]];
        }
        
    }
    
    
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
