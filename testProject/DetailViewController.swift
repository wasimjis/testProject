//
//  DetailViewController.swift
//  testProject
//
//  Created by Wasim on 28/05/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    var post: Post?
    
    @IBOutlet weak var detailLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.layer.borderColor = UIColor.lightGray.cgColor
        detailLabel.layer.borderWidth = 1
        if let post = post {
            detailLabel.text = heavyComputation(for: post)
        }
    }
    
    func heavyComputation(for post: Post) -> String {
        let start = CFAbsoluteTimeGetCurrent()
        
        // Simulate heavy computation
        var result = ""
        for _ in 0..<1000 {
            result += post.title
        }
        
        let end = CFAbsoluteTimeGetCurrent()
        print("Heavy computation took \(end - start) seconds")
        return result
    }
}
