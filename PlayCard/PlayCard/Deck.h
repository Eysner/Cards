//
//  Deck.h
//  PlayCard
//
//  Created by Anton Eysner on 10.02.17.
//  Copyright © 2017 Anton Eysner. All rights reserved.
//

#import "Card.h"
#import <Foundation/Foundation.h>

@interface Deck : NSObject

- (void) addCard:(Card *)card atTop:(BOOL) atTop;
- (void) addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
