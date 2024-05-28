//
//  PostTableViewCell.swift
//
//  Created by Wasim on 28/05/24.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(with post: Post) {
        idLabel.text = "\(post.id)"
        titleLabel.text = post.title
    }
}
