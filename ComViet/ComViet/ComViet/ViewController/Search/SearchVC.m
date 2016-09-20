//
//  SearchVC.m
//  Cơm Việt
//
//  Created by NguyenMach-MAC on 9/16/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import "SearchVC.h"
#import "define.h"
#import "CellSearch.h"
#import "DetailVC.h"

@interface SearchVC ()<UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate>


@property (weak, nonatomic) IBOutlet UIButton *menuBtn;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UIButton *logoBtn;
@property (weak, nonatomic) IBOutlet UIView *underViewLogoBtn;
@property (weak, nonatomic) IBOutlet UIButton *tinhThanhBtn;
@property (weak, nonatomic) IBOutlet UIButton *danhMucBtn;
@property (weak, nonatomic) IBOutlet UIButton *sortFilterBtn;
@property (weak, nonatomic) IBOutlet UITableView *tbvSearch;

@end

@implementation SearchVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
  
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CellSearch *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.imgItem.image = [UIImage imageNamed:@"banner03"];
    cell.lblNameItem.text = @"Cá kho tộ";
    cell.lblNameShop.text = @"Quán Cô Tám";
    cell.lblMoreInfoItem.text = @"Ngon, bổ , rẻ , tươi, khuyến mãi 50 % , off sale";
    cell.lblPriceItem.text = @"15 000";
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DetailVC *vc = VCFromSB(DetailVC, StoryboardSearch);
    
    [self presentViewController:vc animated:YES completion:nil];
    
}


@end
