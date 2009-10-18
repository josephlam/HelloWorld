//
//  HelloWorldAppDelegate.m
//  HelloWorld
//
//  Created by Joseph Lam on 18/10/2009.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "HelloWorldAppDelegate.h"
#import "MyViewController.h"

@implementation HelloWorldAppDelegate

@synthesize window;
@synthesize myViewController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {    

	MyViewController *aViewController = [[MyViewController alloc] initWithNibName:@"MyViewController" bundle:[NSBundle mainBundle]];
	// auto-release approach:
	//MyViewController *aViewController = [[[MyViewController alloc] initWithNibName:@"MyViewController" bundle:[NSBundle mainBundle]] autorelease];
	
	[self setMyViewController:aViewController];
	// using the Dot Syntax:
	//self.myViewController = aViewController;
	
	[aViewController release];
	
	UIView *controllersView = [myViewController view];
	[window addSubview:controllersView];
	
    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
	[myViewController release];
    [window release];
    [super dealloc];
}


@end
