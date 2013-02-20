//
//  EtudiantController.h
//  AppliIUTSDdeLorraine
//
//  Created by Kerautret on 16/02/13.
//  Copyright (c) 2013 Damien Bannerot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EtudiantController : UIViewController{
    IBOutlet UIImageView *topImage;
}

@property (nonatomic, retain) IBOutlet UIImageView *topImage;
- (IBAction)back:(id)sender;

@end
