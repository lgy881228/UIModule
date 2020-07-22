//
//  EntryViewController.m
//  UIModule
//
//  Created by edz on 2020/7/21.
//  Copyright © 2020 edz. All rights reserved.
//

#import "EntryViewController.h"
#import "XEngineSDK.h"
@interface EntryViewController ()

@end

@implementation EntryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)btAction:(id)sender
{
    MicroConfigModel *microConfigModel = [PublicData sharedInstance].microConfigModel;
        ZipModel *model = microConfigModel.data[0];
        RecyleWebViewController *webLaderVC = [[RecyleWebViewController alloc] initWithMicroAppId:model.microAppId microAppVersion:model.microAppVersion index:0];
    //    webLaderVC.filePath = [NSString stringWithFormat:@"%@/%@.%@",[NSObject microAppDirectory], model.microAppId,model.microAppVersion];
        [self pushViewController:webLaderVC];
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
