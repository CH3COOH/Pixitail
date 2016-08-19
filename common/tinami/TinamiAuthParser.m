//
//  TinamiAuthParser.m
//  pixiViewer
//
//  Created by nya on 10/02/23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "TinamiAuthParser.h"


@implementation TinamiAuthParser

@synthesize status, errorMessage, creatorID;

- (void) dealloc {
	[status release];
	[errorMessage release];
	[creatorID release];
	
	[super dealloc];
}

- (void) startDocument {
}

- (void) endDocument {
}

- (void) startElementName:(NSString *)name attributes:(NSDictionary *)attributes {
	if ([name isEqual:@"rsp"]) {
		self.status = [attributes objectForKey:@"stat"];
	} else if ([name isEqual:@"err"]) {
		self.errorMessage = [attributes objectForKey:@"msg"];
	} else if ([name isEqual:@"creator"]) {
		self.creatorID = [attributes objectForKey:@"id"];
	}
}


- (void) endElementName:(NSString *)name {
}

- (void) characters:(const unsigned char *)ch length:(int)len {
}

@end
