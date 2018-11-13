//
//  ShopDetailViewController.swift
//  GourmetSearch
//
//  Created by Kazunari Ueeda on 2018/09/16.
//  Copyright © 2018 植江田和成. All rights reserved.
//

import UIKit
import MapKit

class ShopDetailViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var nameHeight: NSLayoutConstraint!
    @IBOutlet weak var tel: UILabel!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var addressContainerHeight: NSLayoutConstraint!
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var favoriteIcon: UIImageView!
    @IBOutlet weak var favoriteLabel: UILabel!
    
    @IBAction func telTapped(_ sender: Any) {
        print("telTapped")
    }
    @IBAction func addressTapped(_ sender: Any) {
        print("addressTapped")
    }
    @IBAction func favoriteTapped(_ sender: Any) {
        print("favoriteTapped")
    }
    
    var shop = Shop()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 写真
        if let url = shop.photoUrl {
            photo.sd_setImage(with: URL(string: url),
                              placeholderImage: UIImage(named: "loading"));
        } else {
            photo.image = UIImage(named: "loading")
        }
        // 店舗名
        name.text = shop.name
        // 電話番号
        tel.text = shop.tel
        // 住所
        address.text = shop.address
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        let nameFrame = name.sizeThatFits(CGSize(width: name.frame.size.width,
                                                 height: CGFloat.greatestFiniteMagnitude))
        nameHeight.constant = nameFrame.height
        
        let addressFrame = address.sizeThatFits(CGSize(width: address.frame.size.width, height: CGFloat.greatestFiniteMagnitude))
        addressContainerHeight.constant = addressFrame.height
        view.layoutIfNeeded()
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
