//
//  TodayViewController.swift
//  SanatanNotificationTodayExtension
//
//  Created by Sujay Sudhir Borde on 22/05/2016.
//  Copyright © 2016 RMIT. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    @IBOutlet weak var quoteText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
        
        let service = MessageService()
        quoteText.text = service.randomQuote()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.

        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData

        completionHandler(NCUpdateResult.NewData)
    }
    
    func widgetMarginInsetsForProposedMarginInsets
        (defaultMarginInsets: UIEdgeInsets) -> (UIEdgeInsets) {
            return UIEdgeInsetsZero
    }
    
}
