//
//  ViewController.swift
//  Shopping Cart
//
//  Created by Yeison Vargas on 17/03/17.
//  Copyright © 2017 Megaterios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIGestureRecognizerDelegate {
    
    var allProducts = Product.allProducts
    
    var productAddedArray = [Product]()
    var total = 0.0

    @IBOutlet weak var rightCornerCounter: UILabel!
    @IBOutlet weak var productsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.labelAction(_:)))
        rightCornerCounter.addGestureRecognizer(tap)
        tap.delegate = self
        
    }
    
    func labelAction(_: UITapGestureRecognizer) {
        let modalShoppingCart = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "modal") as! ModalViewController
        self.addChildViewController(modalShoppingCart)
        modalShoppingCart.view.frame = self.view.frame
        self.view.addSubview(modalShoppingCart.view)
        modalShoppingCart.didMove(toParentViewController: self)
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Table View Data Source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "product")!
        let product = self.allProducts[(indexPath as NSIndexPath).row]
        
        // Set the name and image
        (cell.viewWithTag(1) as! UILabel).text = product.name
        (cell.viewWithTag(2) as! UILabel).text = product.price
        (cell.viewWithTag(3) as! UILabel).text = product.stock
        let buy = (cell.viewWithTag(4) as! UIButton)
        
        buy.tag = indexPath.row
        buy.addTarget(self, action: #selector(addToShoppingCar(buttonClicked:)), for: .touchUpInside)
        
        return cell
    }
    
    func addToShoppingCar(buttonClicked: UIButton) {
        
        var product = self.allProducts[buttonClicked.tag]
        
        self.productAddedArray.append(product)
        
        
        if Int(product.stock) == 0 {
            allProducts.remove(at: buttonClicked.tag)
            //self.productsTableView!.deleteRows(at: [IndexPath(row: buttonClicked.tag, section: 0),], with: .automatic)
        } else {
            product.stock = "\(Int(product.stock)! - 1)"
        }

        rightCornerCounter.text = "\(self.productAddedArray.count) - \(getTotal())"
        //self.productsTableView!.reloadRows(at: [IndexPath(row: buttonClicked.tag, section: 0),], with: .automatic)
    }

    func getTotal() -> Double {
        for productAdded in productAddedArray {
            total += Double(productAdded.price)!
        }
        return total
    }

}

