//
//  SelectEDTController.h
//  AppliIUTSDdeLorraine
//
//  Created by Kerautret on 16/02/13.
//  Copyright (c) 2013 Damien Bannerot. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlidableView.h"

@interface SelectEDTController : UIViewController<SlidableView>{
    NSMutableString *myEDTName;
    NSMutableString *myEDTCode;
    IBOutlet UIView *viewAnimates;
    IBOutlet UIImageView *topImage;

}
@property (nonatomic, retain) NSMutableString *myEDTName;
@property (nonatomic, retain) NSMutableString *myEDTCode;

@property (nonatomic, retain) UIView *viewAnimates;

@property (nonatomic, retain) IBOutlet UIImageView *topImage;

- (IBAction)back:(id)sender;


- (IBAction) selectEDT:(id)sender;

@end
