//
//  CellDetail.h
//  ComViet
//
//  Created by Kai on 9/18/16.
//  Copyright © 2016 Kai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellDetail : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imvItem;
@property (weak, nonatomic) IBOutlet UILabel *lblNameItem;
@property (weak, nonatomic) IBOutlet UILabel *lblMoreItem;
@property (weak, nonatomic) IBOutlet UILabel *lblPriceItem;
@property (weak, nonatomic) IBOutlet UILabel *lblNameShop;
@property (weak, nonatomic) IBOutlet UILabel *lblNumberOfComment;

@end
