//
//  ViewController.h
//  AutoFlip
//
//  Created by Steve John Vitali on 12/30/13.
//  Copyright (c) 2013 Steve John Vitali. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FUIButton.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet FUIButton *startButton;
@property (weak, nonatomic) IBOutlet FUIButton *importButton;
@property (weak, nonatomic) IBOutlet UILabel *logoLabel;

- (IBAction)showMenu:(id)sender;

- (void)returnToRoot;

@end
