//
//  IntroduceVC.m
//  Cơm Việt
//
//  Created by NguyenMach-MAC on 9/15/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import "IntroduceVC.h"
#import "CellIntro.h"
#import "Appdelegate.h"

@interface IntroduceVC ()<UITableViewDataSource,UITableViewDelegate>{

    NSArray *_arrImgBanner;
}

@end

@implementation IntroduceVC

- (void)viewDidLoad {
            [super viewDidLoad];
            
            self.view.backgroundColor  = [UIColor redColor];
            _tbvContent.allowsSelection = NO;
    
    _arrImgBanner = @[@"banner01",@"banner02",@"banner03"];
    
}

- (void)didReceiveMemoryWarning {
            [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - TableView DataSource

- (CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
            return self.view.frame.size.height / 3;
}
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

            return  100;
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{

            return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
  
            return 10;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{

            CGRect frame = CGRectMake(0, 0, tableView.frame.size.width,tableView.frame.size.height *(1.0f/3));
            UIScrollView *banerScrollV = [[UIScrollView alloc] initWithFrame:frame];
    
            CGFloat originImvX =  tableView.frame.size.width;
    for (NSInteger i = 0; i< [_arrImgBanner count] ; i ++) {
        
            frame = CGRectMake(originImvX*i, 0, tableView.frame.size.width,tableView.frame.size.height *(1.0f/3));
            UIImageView *imvBanner = [[UIImageView alloc]initWithFrame:frame];
            imvBanner.image = [UIImage imageNamed: _arrImgBanner[i]];
            [banerScrollV addSubview:imvBanner];
        

    }
            banerScrollV.contentSize = CGSizeMake(tableView.frame.size.width*([_arrImgBanner count]), tableView.frame.size.height *(1.0f/3));
            banerScrollV.showsHorizontalScrollIndicator = NO;
            banerScrollV.showsVerticalScrollIndicator = NO;
    
    
           return banerScrollV;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

        CellIntro *cell = [tableView dequeueReusableCellWithIdentifier:@"CellIntro"];
    
        return cell;
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
