//
//  PlayingCard.h
//  PlayCard
//
//  Created by Anton Eysner on 10.02.17.
//  Copyright © 2017 Anton Eysner. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
