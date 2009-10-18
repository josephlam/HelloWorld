//
//  MyViewController.h
//  HelloWorld
//
//  Created by Joseph Lam on 18/10/2009.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MyViewController : UIViewController <UITextFieldDelegate> {
	UITextField *textField;
	UILabel *label;
	NSString *string;
}

@property (nonatomic, retain) IBOutlet UITextField *textField;
@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, copy) NSString *string;

- (IBAction)changeGreeting:(id)sender;

@end
