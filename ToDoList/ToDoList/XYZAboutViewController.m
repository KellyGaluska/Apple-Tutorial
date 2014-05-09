//
//  XYZAboutViewController.m
//  ToDoList
//
//  Created by Student on 5/9/14.
//
//

#import "XYZAboutViewController.h"

@interface XYZAboutViewController ()

@end

@implementation XYZAboutViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *githubButton = [[UIButton alloc]initWithFrame:CGRectMake(10,120,100,30)];
    githubButton.backgroundColor = [UIColor redColor];
    [githubButton setTitle:@"My Github" forState:UIControlStateNormal];
    [githubButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:githubButton];
    self.title = @"About";
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(10, 75, 200, 40)];
    [label1 setTextColor:[UIColor blackColor]];
    [label1 setText:@"Author: Kelly Galuska"];
    [[self view] addSubview:label1];
    

}

- (void)buttonPressed:(UIButton *)sender{
    NSLog(@"Github Button Pressed");
    
    NSURL *url = [[NSURL alloc] initWithString:@"https://github.com/KellyGaluska"];
    [[UIApplication sharedApplication] openURL:url];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
