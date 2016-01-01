//
//  ViewController.m
//  JKAutomaticTableViewCellHeightManagement
//
//  Created by Jayesh Kawli Backup on 12/31/15.
//  Copyright © 2015 Jayesh Kawli Backup. All rights reserved.
//

#import "JKAutomaticTableHeightTableViewCell.h"
#import "ViewController.h"

static NSString* cellIdentifier = @"automaticHeightCell";

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView* tableView;
@property (strong, nonatomic) NSArray<NSString*>* cellTitlesCollection;
@property (strong, nonatomic) NSArray<UIColor*>* cellColorsCollection;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Automatic Row Height";
    _cellTitlesCollection = @[
        @"This is sample Label",
        @"This label title\nSpans two rows",
        @"This label\nSpans\nThree\nLines",
        @"This\nlabel\nSpans\nFour\nLines",
        @"This\nTitle\nSpans\nFive\nLines"
    ];
    _cellColorsCollection = @[ [UIColor yellowColor], [UIColor lightGrayColor] ];
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 54.0;
    [self.tableView reloadData];
}

#pragma UITableView datasource and delegate methods.
- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section {
    return _cellTitlesCollection.count;
}

- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath {
    JKAutomaticTableHeightTableViewCell* cell =
        [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    cell.cellTitleLabel.text = _cellTitlesCollection[indexPath.row];
    cell.contentView.backgroundColor = _cellColorsCollection[indexPath.row % 2];
    return cell;
}

@end
