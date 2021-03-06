//
//  KeyShortcutConfigurationController.m
//  KeyShortcut-Pro
//
//  Created by Mustafa Gezen on 10.08.2015.
//  Copyright © 2015 Mustafa Gezen. All rights reserved.
//

#import <Preferences/Preferences.h>

@interface KeyShortcutConfigurationController: PSListController
@end

@implementation KeyShortcutConfigurationController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [self loadSpecifiersFromPlistName:@"KeyShortcutConfiguration" target:self];
	}
	return _specifiers;
}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
	UIColor *goodColor = [UIColor colorWithRed:228.0/255.0 green:188.0/255.0 blue:41.0/255.0 alpha:1.0];
	self.view.tintColor = goodColor;
	self.navigationController.navigationBar.tintColor = goodColor;
	self.navigationController.navigationController.navigationBar.tintColor = goodColor;
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    self.view.tintColor = nil;
    self.navigationController.navigationBar.tintColor = nil;
    self.navigationController.navigationController.navigationBar.tintColor = nil;
}
@end

// vim:ft=objc
