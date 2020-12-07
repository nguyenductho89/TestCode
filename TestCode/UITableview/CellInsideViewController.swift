//
//  CellInsideViewController.swift
//  TestCode
//
//  Created by Nguyen Duc Tho on 12/7/20.
//  Copyright © 2020 Nguyen Duc Tho. All rights reserved.
//

import UIKit


class CellInsideViewController: UIViewController {
    
    @IBOutlet weak var manageSubview: CustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        self.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.manageSubview.tableView.leadingAnchor.constraint(equalTo: self.manageSubview.leadingAnchor, constant: 0),
            self.manageSubview.tableView.topAnchor.constraint(equalTo: self.manageSubview.topAnchor, constant: 0),
            self.manageSubview.tableView.trailingAnchor.constraint(equalTo: self.manageSubview.trailingAnchor, constant: 0),
            self.manageSubview.tableView.bottomAnchor.constraint(equalTo: self.manageSubview.bottomAnchor, constant: 0)])
    }
    override func viewWillLayoutSubviews() {
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

@IBDesignable class CustomView: UIView {
    
    let tableView = UITableView(frame: .zero, style: .plain)
    //let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 300, height: 400), style: .plain)
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    private func commonInit() {
        self.backgroundColor = .green
        self.translatesAutoresizingMaskIntoConstraints = false
        self.tableView.backgroundColor = .yellow
        self.addSubview(self.tableView)
//
//        NSLayoutConstraint.activate([
//            self.tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
//            self.tableView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
//            self.tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
//            self.tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
//        ])
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }
}
