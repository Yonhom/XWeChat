//
//  MessageViewController.swift
//  XWeChat
//
//  Created by 徐永宏 on 2017/6/3.
//  Copyright © 2017年 徐永宏. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController {
    /*
     message cell's identifier, for locate different type of cells, if there
     is more than one type
    */
    let messageCellIdentifier = "MessageCell"
    
    let messageCellNibName = "MessageCell"
    
    let messageTableRowHeight = 80

    /**
    the table view responsible for display the main messages
    */
    @IBOutlet weak var messageTableView: UITableView!
    
    /**
     the message data
    */
    var messages = [MessageModel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set the root view of this controller's background 
        view.backgroundColor = UIColor.lightGray
        
        // prepare the table view for populating message items
        messageTableView.register(UINib(nibName: messageCellNibName, bundle: nil), forCellReuseIdentifier: messageCellIdentifier)
        messageTableView.rowHeight = CGFloat(messageTableRowHeight)
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

/**
 the delegate methods for UITableView in this controller
 */
extension MessageViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

/**
 the data source methods for UITableview in this controller
 */
extension MessageViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let messageCell = tableView.dequeueReusableCell(withIdentifier: messageCellIdentifier, for: indexPath)
        return messageCell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    
    
}
