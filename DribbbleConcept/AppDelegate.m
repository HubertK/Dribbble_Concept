//
//  AppDelegate.m
//  DribbbleConcept
//
//  Created by Hubert Kunnemeyer on 10/23/13.
//  Copyright (c) 2013 Hubert Kunnemeyer. All rights reserved.
//

#import "AppDelegate.h"
#import <QuartzCore/QuartzCore.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.tabBarController = [storyboard instantiateViewControllerWithIdentifier:@"InitialView"];
    [self setUpTabBarAppearence];
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}



- (void)setUpTabBarAppearence{
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    UITabBar *tabBar = tabBarController.tabBar;
    
    UIOffset titleOffset = UIOffsetMake(0.0, -4.0);
    
    UITabBarItem *item0 = [tabBar.items objectAtIndex:0];
    UITabBarItem *item1 = [tabBar.items objectAtIndex:1];
    UITabBarItem *item2 = [tabBar.items objectAtIndex:2];
    UITabBarItem *item3 = [tabBar.items objectAtIndex:3];
    
     item0.titlePositionAdjustment = titleOffset;
     item1.titlePositionAdjustment = titleOffset;
     item2.titlePositionAdjustment = titleOffset;
     item3.titlePositionAdjustment = titleOffset;
    
    item0.title = @"Grid";
    item1.title = @"Dribbble";
    item2.title = @"Picture";
    item3.title = @"Attachment";
    
    UIImage *selectedImage0 = [UIImage imageNamed:@"button1ON"];
    UIImage *selectedImage1 = [UIImage imageNamed:@"button2ON"];
    UIImage *selectedImage2 = [UIImage imageNamed:@"button3ON"];
    UIImage *selectedImage3 = [UIImage imageNamed:@"button4ON"];
    
    UIImage *unSelectedImage0 = [UIImage imageNamed:@"button1OFF"];
    UIImage *unSelectedImage1 = [UIImage imageNamed:@"button2OFF"];
    UIImage *unSelectedImage2 = [UIImage imageNamed:@"button3OFF"];
    UIImage *unSelectedImage3 = [UIImage imageNamed:@"button4OFF"];
    
    
    [item0 setFinishedSelectedImage:selectedImage0 withFinishedUnselectedImage:unSelectedImage0];
    [item1 setFinishedSelectedImage:selectedImage1 withFinishedUnselectedImage:unSelectedImage1];
    [item2 setFinishedSelectedImage:selectedImage2 withFinishedUnselectedImage:unSelectedImage2];
    [item3 setFinishedSelectedImage:selectedImage3 withFinishedUnselectedImage:unSelectedImage3];
    
    [[UITabBar appearance]setTintColor:[UIColor colorWithRed:0.48f green:0.67f blue:0.80f alpha:1.00f]];
    
        // The TabBar shadow needs to be removed, so we'll just set it to a UIImage with no image.
        // If you didn't remove the shadow, it will show up as a line going through the TabBar. The art assets
        // I've used here are larger than the "standard" UITabBar, so the shadow would show up at about
        // 49 pts. up from the bottom of the view.
    [[UITabBar appearance] setShadowImage:[[UIImage alloc] init]];

    UIImage *tabBarBackground = [UIImage imageNamed:@"TabBarBackground.png"];
    [[UITabBar appearance] setBackgroundImage:tabBarBackground];

    [[UIView appearance]setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"pattern.png"]]];
    
    
    UIColor *lightBlue = [UIColor colorWithRed:0.48f green:0.67f blue:0.80f alpha:1.00f];
    UIColor *black = [UIColor darkTextColor];
    
    NSDictionary *textAttributes = @{NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Medium" size:10.0f],
                                     NSForegroundColorAttributeName : lightBlue};
    
    [[UITabBarItem appearance]setTitleTextAttributes:textAttributes forState:UIControlStateSelected];
//    [[UITabBarItem appearance]setTitleTextAttributes:textAttributes forState:UIControlStateHighlighted];
    
    NSMutableDictionary *attrsCopy = [textAttributes mutableCopy];
    
        // Text Shadow
    NSShadow *shadow = [[NSShadow alloc]init];
    shadow.shadowOffset = (CGSize){0.0, 0.5};
    shadow.shadowColor = [UIColor darkGrayColor];
    shadow.shadowBlurRadius = 2.0f;
    
    attrsCopy[NSForegroundColorAttributeName] = black;
    attrsCopy[NSShadowAttributeName] = shadow;
    
    [[UITabBarItem appearance]setTitleTextAttributes:attrsCopy forState:UIControlStateNormal];

}






























@end
