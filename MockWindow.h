//
//  MockWindow.h
//  ContractionTimer
//
//  Created by Eric Smith on 9/22/09.
//  Copyright 2009 8th Light. All rights reserved.
//

#import<UIKit/UIKit.h>

@interface MockWindow : UIWindow {
	UIView *calledWithView;

}

-(bool) addSubviewCalledWith:(UIView *) view;
-(void) addSubview:(UIView *) view;

@end
