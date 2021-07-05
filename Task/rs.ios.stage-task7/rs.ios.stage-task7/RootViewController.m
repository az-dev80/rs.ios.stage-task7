//
//  RootViewController.m
//  rs.ios.stage-task7
//
//  Created by Albert Zhloba on 4.07.21.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

NSInteger TAG_1 = 1;
NSInteger TAG_2 = 2;
NSInteger TAG_3 = 3;

- (void)viewDidLoad {
    [super viewDidLoad];
     self.view.backgroundColor = [UIColor whiteColor];
    
    UIColor *blackCoral = [UIColor colorWithRed: 0.30 green: 0.36 blue: 0.41 alpha: 1.00];
   // UIColor *turquoiseGreen = [UIColor colorWithRed: 0.57 green: 0.78 blue: 0.69 alpha: 1.00];
   // UIColor *venetianRed = [UIColor colorWithRed: 0.76 green: 0.00 blue: 0.08 alpha: 1.00];
    UIColor *littleBlueBoy = [UIColor colorWithRed: 0.50 green: 0.64 blue: 0.93 alpha: 1.00];
    
    //UIColor *littleBlueBoyHighBackgr = [UIColor colorWithRed: 0.50 green: 0.64 blue: 0.93 alpha: 0.20];
    UIColor *littleBlueBoyHighText = [UIColor colorWithRed: 0.50 green: 0.64 blue: 0.93 alpha: 0.40];
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    
    self.myLabel = [[UILabel alloc] initWithFrame:CGRectMake((screenWidth - 200)/2,80,200,36)];
    // myLabel.backgroundColor = [UIColor clearColor];
    self.myLabel.text = @"RSSchool";
    self.myLabel.textColor = [UIColor blackColor];
    //self.myLabel.font = [UIFont fontWithName:@".SFProText-Bold" size:36.0];
    self.myLabel.font = [UIFont boldSystemFontOfSize:36.0];
    self.myLabel.textAlignment =  NSTextAlignmentCenter;
    [self.view addSubview:self.myLabel];
    
    self.loginTextField = [[UITextField alloc] initWithFrame:CGRectMake(36,200,300,36)];
    self.loginTextField.delegate = self;
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    self.loginTextField.leftView = paddingView;
    self.loginTextField.leftViewMode = UITextFieldViewModeAlways;
    self.loginTextField.placeholder = @"Login";
    self.loginTextField.layer.cornerRadius = 5.0f;
    self.loginTextField.layer.borderColor = blackCoral.CGColor;
    self.loginTextField.layer.borderWidth = 1.5;
    self.loginTextField.keyboardType = UIKeyboardTypeASCIICapable;
    self.loginTextField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    [self.view addSubview:self.loginTextField];
    
    self.pwdTextField = [[UITextField alloc] initWithFrame:CGRectMake(36,266,300,36)];
    self.pwdTextField.delegate = self;
    UIView *paddingView2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    self.pwdTextField.leftView = paddingView2;
    self.pwdTextField.leftViewMode = UITextFieldViewModeAlways;
    self.pwdTextField.placeholder = @"Password";
    self.pwdTextField.keyboardType = UIKeyboardTypeDefault;
    self.pwdTextField.secureTextEntry = true;
    self.pwdTextField.layer.cornerRadius = 5.0f;
    self.pwdTextField.layer.borderColor = blackCoral.CGColor;
    self.pwdTextField.layer.borderWidth = 1.5;
    self.pwdTextField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    [self.view addSubview:self.pwdTextField];
    
    self.authButton = [[UIButton alloc] initWithFrame:CGRectMake((screenWidth - 156)/2,362,156,42)];
    [self.authButton setImage:[UIImage imageNamed:@"person"] forState:UIControlStateNormal];
    [self.authButton setImage:[UIImage imageNamed:@"person-fill"] forState:UIControlStateHighlighted];
    self.authButton.imageEdgeInsets = UIEdgeInsetsMake(12, 0, 12, 10);
    [self.authButton setTitle:@"Authorize" forState:UIControlStateNormal];
    [self.authButton setTitleColor:littleBlueBoy forState:UIControlStateNormal];
    [self.authButton setTitleColor:littleBlueBoyHighText forState:UIControlStateHighlighted];

    self.authButton.titleLabel.font = [UIFont systemFontOfSize:20.0 weight:UIFontWeightSemibold];
    self.authButton.layer.cornerRadius = 10.0;
    self.authButton.layer.borderColor = littleBlueBoy.CGColor;
    self.authButton.layer.borderWidth = 2.0;
    [self.view addSubview:self.authButton];
    [self hideWhenTappedAround];
    
    self.view2 = [[UIView alloc] initWithFrame:CGRectMake((screenWidth - 236)/2, 429, 236, 110)];
    [self.view addSubview: self.view2];
    self.view2.hidden = true;
    [self.authButton addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    
    self.myLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(0,15,236,36)];
    // myLabel.backgroundColor = [UIColor clearColor];
    self.myLabel2.text = @"-";
    self.myLabel2.textColor = [UIColor blackColor];
    self.myLabel2.font = [UIFont systemFontOfSize:18.0 weight:UIFontWeightSemibold];
    self.myLabel2.textAlignment =  NSTextAlignmentCenter;
    [self.view2 addSubview:self.myLabel2];
    
    self.button1 = [[UIButton alloc] initWithFrame:CGRectMake(23,45,50,50)];
    //self.authButton.imageEdgeInsets = UIEdgeInsetsMake(12, 0, 12, 10);
    [self.button1 setTitle:@"1" forState:UIControlStateNormal];
    [self.button1 setTitleColor:littleBlueBoy forState:UIControlStateNormal];
    self.button1.titleLabel.font = [UIFont systemFontOfSize:24.0 weight:UIFontWeightSemibold];
    self.button1.layer.cornerRadius = 25.0;
    self.button1.layer.borderColor = littleBlueBoy.CGColor;
    self.button1.layer.borderWidth = 1.5;
    self.button1.tag = TAG_1;
    [self.view2 addSubview:self.button1];
    [self.button1 addTarget:self action:@selector(buttonAction2:) forControlEvents:UIControlEventTouchUpInside];
    
    self.button2 = [[UIButton alloc] initWithFrame:CGRectMake(93,45,50,50)];
    //self.authButton.imageEdgeInsets = UIEdgeInsetsMake(12, 0, 12, 10);
    [self.button2 setTitle:@"2" forState:UIControlStateNormal];
    [self.button2 setTitleColor:littleBlueBoy forState:UIControlStateNormal];
    self.button2.titleLabel.font = [UIFont systemFontOfSize:24.0 weight:UIFontWeightSemibold];
    self.button2.layer.cornerRadius = 25.0;
    self.button2.layer.borderColor = littleBlueBoy.CGColor;
    self.button2.layer.borderWidth = 1.5;
    self.button2.tag = TAG_2;
    [self.view2 addSubview:self.button2];
    [self.button2 addTarget:self action:@selector(buttonAction2:) forControlEvents:UIControlEventTouchUpInside];
    
    self.button3 = [[UIButton alloc] initWithFrame:CGRectMake(163,45,50,50)];
    //self.authButton.imageEdgeInsets = UIEdgeInsetsMake(12, 0, 12, 10);
    [self.button3 setTitle:@"3" forState:UIControlStateNormal];
    [self.button3 setTitleColor:littleBlueBoy forState:UIControlStateNormal];
    self.button3.titleLabel.font = [UIFont systemFontOfSize:24.0 weight:UIFontWeightSemibold];
    self.button3.layer.cornerRadius = 25.0;
    self.button3.layer.borderColor = littleBlueBoy.CGColor;
    self.button3.layer.borderWidth = 1.5;
    self.button3.tag = TAG_3;
    [self.view2 addSubview:self.button3];
    [self.button3 addTarget:self action:@selector(buttonAction2:) forControlEvents:UIControlEventTouchUpInside];
    NSLog(@"nh %@", self.myLabel2.text);
    
}

-(void)buttonAction2:(UIButton *)sender{
    NSMutableString * string = [[NSMutableString alloc]initWithString:self.myLabel2.text];
    if ([string isEqualToString:@"-"]){
        [string deleteCharactersInRange:NSMakeRange([string length] - 1, 1)];
    }
    if(sender.tag == TAG_1){
        [string appendString:@"1 "];
        self.myLabel2.text = string;
        NSLog(@"%@", string);
    }
    if(sender.tag == TAG_2){
        [string appendString:@"2 "];
        self.myLabel2.text = string;
        NSLog(@"%@", string);
    }
    if(sender.tag == TAG_3){
        [string appendString:@"3 "];
        self.myLabel2.text = string;
        NSLog(@"%@", string);
    }
    if([string isEqualToString:@"1 3 2 "]){
        UIColor *turquoiseGreen = [UIColor colorWithRed: 0.57 green: 0.78 blue: 0.69 alpha: 1.00];
        self.view2.layer.borderColor = turquoiseGreen.CGColor;
        self.view2.layer.borderWidth = 1.5;
        self.view2.layer.cornerRadius = 10.0;
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Welcome" message:@"You are successfuly authorized!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"Refresh" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            [self actionMethod];
        }];
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:nil];
        
    }
    if((string.length == 6) && ![string isEqualToString:@"1 3 2 "]){
        UIColor *venetianRed = [UIColor colorWithRed: 0.76 green: 0.00 blue: 0.08 alpha: 1.00];
        self.view2.layer.borderColor = venetianRed.CGColor;
        self.view2.layer.borderWidth = 1.5;
        self.view2.layer.cornerRadius = 10.0;
        self.myLabel2.text = @"-";
    }
    
}

-(void)actionMethod{
    UIColor *blackCoral = [UIColor colorWithRed: 0.30 green: 0.36 blue: 0.41 alpha: 1.00];
    [self.view endEditing:true];
    [self.view2 setUserInteractionEnabled:NO];
    self.view2.hidden = true;
    self.loginTextField.text = nil;
    self.loginTextField.layer.borderColor = blackCoral.CGColor;
    self.loginTextField.enabled = true;
    self.pwdTextField.text = nil;
    self.pwdTextField.layer.borderColor = blackCoral.CGColor;
    self.pwdTextField.enabled = true;
    self.authButton.backgroundColor = [UIColor whiteColor];
    self.authButton.enabled = true;
    
}

-(void)buttonAction{
    UIColor *venetianRed = [UIColor colorWithRed: 0.76 green: 0.00 blue: 0.08 alpha: 1.00];
    UIColor *turquoiseGreen = [UIColor colorWithRed: 0.57 green: 0.78 blue: 0.69 alpha: 1.00];
    if ([self.loginTextField.text  isEqual: @"username"] && [self.pwdTextField.text  isEqual: @"password"])
    {
        self.pwdTextField.layer.borderColor = [turquoiseGreen colorWithAlphaComponent:0.50].CGColor;
        self.loginTextField.layer.borderColor = [turquoiseGreen colorWithAlphaComponent:0.50].CGColor;
        [self.view endEditing:true];
        self.loginTextField.enabled = false;
        self.pwdTextField.enabled = false;
        UIColor *littleBlueBoyHighSuccess = [UIColor colorWithRed: 0.50 green: 0.64 blue: 0.93 alpha: 0.50];
        self.authButton.backgroundColor = littleBlueBoyHighSuccess;
        self.authButton.enabled = false;
        [self.view2 setUserInteractionEnabled:true];
        self.view2.hidden = false;
        //[self dismissModalViewControllerAnimated:YES];
    }
    else if (![self.loginTextField.text  isEqual: @"username"] && ![self.pwdTextField.text  isEqual: @"password"])
    {
        self.loginTextField.layer.borderColor = venetianRed.CGColor;
        self.pwdTextField.layer.borderColor = venetianRed.CGColor;
    }
    else if (![self.loginTextField.text  isEqual: @"username"])
    {
        self.loginTextField.layer.borderColor = venetianRed.CGColor;
        self.pwdTextField.layer.borderColor = turquoiseGreen.CGColor;
    }
    else if (![self.pwdTextField.text  isEqual: @"password"])
    {
        self.loginTextField.layer.borderColor = turquoiseGreen.CGColor;
        self.pwdTextField.layer.borderColor = venetianRed.CGColor;
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)hideWhenTappedAround{
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hide)];
    [self.view addGestureRecognizer:gesture];
}
-(void)hide{
    [self.view endEditing:true];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
