//
//  CatalogViewController.swift
//  CineFlow
//
//  Created by Aleshka on 17.09.2026.
//

import UIKit

class CatalogViewController: UIViewController {
    
    private let viewModel = CatalogViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Фильмов в каталоге: \(viewModel.movies.count)")
        
        

        // Do any additional setup after loading the view.
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
