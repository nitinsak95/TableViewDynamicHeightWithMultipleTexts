//
//  ViewController.swift
//  autoResizee
//
//  Created by AFFIXUS IMAC1 on 8/9/18.
//  Copyright © 2018 AFFIXUS IMAC1. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var names = ["hagsgha", "smnsbsjajd", "hagsghaksbckhhvhjcshagbhkahvhabkabxbhbabkakxaxghhbaxjbajihbxbhagvsjhx", "njxshslsjxaj,xa", "hagsghaksbckhhvhjcshagbhkahvhabkabxbhbabkakxaxghhbaxjbajihbxbhagvsjhx"]
    var add = ["hagsghaksbckhhvhjcshagbhkahvhabkabxbhbabkakxaxghhbaxjbajihbxbhagvsjhx", "xscsccssmnsbsnndnddddddnnnnnnnnnnnnnnnnnnnnnnnddnnnnnnnnffffffnnnndnddddddnnnnnnnnnnnnnnnnnnnnnnnddnnnnnnnnffffffnnnndnddddddnnnnnnnnnnnnnnnnnnnnnnnddnnnnnnnnffffffnnnndnddddddnnnnnnnnnnnnnnnnnnnnnnnddnnnnnnnnffffffnnjajd", "sjmnsjbhsjcsvdvsgajagsjagjgjgadyihjvajchuhkadccccccckhakjhutwterujahjajnaffajdkhgkkjhagfgbsbbnnnmkmkkkakhggvababna", "gghhannnbgxshjjjksuyhgxxbhnbxbxbxbxbuauauauauauauaauauauauuauauauauauauuauauauauauauauauauauaa,xa", "jnanbskcbhkjabdakjbbbvaggggshgghhannnbgxshjjjksuyhgxxbhnbxbxbxbxbxxbxbxbxbxbxbxbshshshhhhxhxx"]
    var desc = ["loadhheeeyywyywywywwyshshshgggddvfvfvvfffvccbbcbccbcbcbcbsgsgssallalalalalalalalalalalalalalalallallalalalalalallalala", "lalalalalalallaalalallalalalalalalallalllallalallaalalalalalalalalallalaaalallasmnsbsjajd", "sjmnsjbhaaasssxxxxzzzzwwee344ett666sj", "njxshsssssssssssssslllllllllalalallaallalaallaalallalallallallllaaaaaaaallllllllllllsslsdddnnnnnnndnddddddnnnnnnnnnnnnnnnnnnnnnnnddnnnnnnnnffffffnnnndnddddddnnnnnnnnnnnnnnnnnnnnnnnddnnnnnnnnffffffnnnnndnddddddnnnnnnnnnnnnnnnnnnnnnnnddnnnnnnnnffffffnnnnnnnnnnnnnnnnddddddslsjxaj,xa", "jjjbsbba"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.reloadData()
        
        tableView.estimatedRowHeight = 600
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ContentCell
        cell.viewww.sizeToFit()
        cell.viewww.layoutIfNeeded()
        cell.name.text = names[indexPath.row]
        cell.name.numberOfLines = 0
        cell.name.sizeToFit()
        cell.add.text = add[indexPath.row]
        cell.add.numberOfLines = 0
        cell.add.sizeToFit()
        cell.desc.text = desc[indexPath.row]
        cell.desc.numberOfLines = 0
        cell.desc.sizeToFit()
        return cell
    }
}

