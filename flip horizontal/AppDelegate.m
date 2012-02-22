//
//  AppDelegate.m
//  flip horizontal
//
//  Created by Жека Г on 2/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSString *path=@"/Users/mahmood1/Desktop/image1.jpg"; 
    NSImage *image=[[NSImage alloc]initWithContentsOfFile:path ];
    [view setImage:image];
    



}
-(IBAction)flip:(id)sender{
    NSString *path=@"/Users/mahmood1/Desktop/image1.jpg"; 
    NSImage *image=[[NSImage alloc]initWithContentsOfFile:path ];
    NSSize size=[image size];
    NSImage *rotatedimage;
    NSAffineTransform *t=[NSAffineTransform transform];
    
    rotatedimage=[[NSImage alloc]initWithSize:NSMakeSize(size.height, size.width)];
    [rotatedimage lockFocus];
    [t translateXBy:(image.size.width) yBy:0.0];
    [t scaleXBy:-1.0 yBy:1.0];
    
    [t set];    
    
    
    [image drawAtPoint:NSMakePoint(0.0, 0.0) fromRect:NSMakeRect(0.0, 0.0, image.size.width, image.size.height) operation:NSCompositeSourceOver fraction:2.0]
    ;
    
    
    
    [rotatedimage unlockFocus];
    image=rotatedimage;
    [view setImage:image];
}



@end
