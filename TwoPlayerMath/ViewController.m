//
//  ViewController.m
//  TwoPlayerMath
//
//  Created by Chris Jones on 2017-01-16.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "ViewController.h"
#import "PlayerModel.h"
#import "GameModel.h"

@interface ViewController ()

@property (nonatomic, strong) PlayerModel *player1;
@property (nonatomic, strong) PlayerModel *player2;
@property (nonatomic, strong) GameModel *gameModel;

@property (weak, nonatomic) IBOutlet UILabel *player1Label;
@property (weak, nonatomic) IBOutlet UILabel *player2Label;
@property (weak, nonatomic) IBOutlet UITextField *questAnsTextField;
- (IBAction)numberButton:(UIButton *)sender;
- (IBAction)enterButton:(UIButton *)sender;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.player1 = [[PlayerModel alloc]initWithName:@"Player 1:" andIndex:1];
    self.player2 = [[PlayerModel alloc]initWithName:@"Player 2:" andIndex:2];
    
    self.player1Label.text = [NSString stringWithFormat:@"Player 1:    %ld", self.player1.score];
    self.player2Label.text = [NSString stringWithFormat:@"Player 2:    %ld", self.player2.score];
    
    self.questAnsTextField.text = [self.gameModel createQuestion:self.player1];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)numberButton:(UIButton *)sender {

}

- (IBAction)enterButton:(UIButton *)sender {
[self.gameModel checkAnswer:self.pla answer:<#(NSString *)#>
}
@end
