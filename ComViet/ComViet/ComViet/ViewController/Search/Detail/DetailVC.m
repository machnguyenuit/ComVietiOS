//
//  DetailVC.m
//  ComViet
//
//  Created by Kai on 9/18/16.
//  Copyright © 2016 Kai. All rights reserved.
//

#import "DetailVC.h"
#import "CellDetail.h"
@interface DetailVC () <UITableViewDataSource,UITableViewDelegate>

@end

@implementation DetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CellDetail *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.lblNameItem.text = @"abc";
    cell.lblNameShop.text = @"abc";
    cell.lblPriceItem.text = @"abc";
    cell.lblMoreItem.text = @"abc";
    cell.lblNumberOfComment.text = @"abc";
    return cell;
    
}
@end
