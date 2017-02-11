//
//  Card.h
//  PlayCard
//
//  Created by Anton Eysner on 09.02.17.
//  Copyright © 2017 Anton Eysner. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic) BOOL chose;
@property (nonatomic) BOOL match;

-(int) match:(NSArray *)otherCard;

@end
