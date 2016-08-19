//
//  fgTopViewController.m
//  pixiViewer
//
//  Created by Naomoto nya on 11/12/31.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "fgTopViewController.h"
#import "ScrapingService.h"
#import "ScrapingConstants.h"


@implementation fgTopViewController

- (NSString *) searchMethodForTerm:(NSString *)str {
	return [NSString stringWithFormat:[self.service.constants valueForKeyPath:@"urls.search"], 1, encodeURIComponent(str)];
}

@end
