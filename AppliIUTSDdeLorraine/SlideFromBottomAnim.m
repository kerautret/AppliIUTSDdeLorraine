//
//  SlideFromBottomAnim.m
//  AppliIUTSDdeLorraine
//
//  Created by Kerautret on 20/02/13.
//  Copyright (c) 2013 Damien Bannerot. All rights reserved.
//

#import "SlideFromBottomAnim.h"
#import "EtudiantController.h"
@implementation SlideFromBottomAnim



-(void) perform {
    
    EtudiantController *src = (EtudiantController *) self.sourceViewController;
    SelectEDTController *dest = (SelectEDTController *) self.destinationViewController;
    
    [dest loadView];

    [dest.viewAnimates setTransform:CGAffineTransformMakeTranslation(0, dest.viewAnimates.frame.size.height)];
    [src.view setAlpha:1.0];
    [src.view  insertSubview:dest.viewAnimates belowSubview:src.topImage];
    
    [UIView animateWithDuration:0.75
                          delay:0.0
                        options:UIViewAnimationOptionTransitionFlipFromTop
                     animations:^{
                         [dest.viewAnimates setTransform:CGAffineTransformMakeTranslation(0, 0)];
    
                     }
                     completion:^(BOOL finished){
                         [dest.viewAnimates removeFromSuperview];
                         [dest.view  insertSubview:dest.viewAnimates belowSubview:dest.topImage];
                         [self.sourceViewController presentModalViewController:[self destinationViewController] animated:NO];;

                     }];


}

@end
