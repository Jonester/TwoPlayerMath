//
//  PlayerModel.h
//  TwoPlayerMath
//
//  Created by Chris Jones on 2017-01-16.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayerModel : NSObject

@property (nonatomic, strong) NSString *answer;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger score;

- (instancetype)initWithName: (NSString *)name index: (NSInteger)currentPlayer score:(NSInteger)currentScore;
@end
