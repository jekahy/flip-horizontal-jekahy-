//
//  AppDelegate.h
//  flip horizontal
//
//  Created by Жека Г on 2/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>{
   
    IBOutlet NSImageView *view;


}

@property (assign) IBOutlet NSWindow *window;
-(IBAction)flip:(id)sender;

@end
