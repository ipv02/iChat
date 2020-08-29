//
//  ListViewController.swift
//  iChat
//
//  Created by Elena Igumenova on 29.08.2020.
//  Copyright © 2020 I_P-V. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSerchBar()
        setupCollectionView()

    }
//MARK: StupSearchBar
    private func setupSerchBar() {
        navigationController?.navigationBar.barTintColor = .mainWhite()
        navigationController?.navigationBar.shadowImage = UIImage()
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.delegate = self
    }
  
//MARK: StupCollectionView
    private func setupCollectionView() {
        collectionView = UICollectionView(frame: view.bounds,
                                          collectionViewLayout: createCompositionalLayout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.backgroundColor = .mainWhite()
        view.addSubview(collectionView)
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellid")
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
  
//MARK: CreateCompositionalLayout
    private func createCompositionalLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout { (sectionIndex, layoutEnvironment) -> NSCollectionLayoutSection? in
            // section -> groups -> items -> size
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                  heightDimension: .fractionalHeight(1))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                   heightDimension: .absolute(84))
            let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize,
                                                         subitems: [item])
            group.contentInsets = NSDirectionalEdgeInsets.init(top: 0,
                                                               leading: 0,
                                                               bottom: 8,
                                                               trailing: 0)
            
            let section = NSCollectionLayoutSection(group: group)
            section.contentInsets = NSDirectionalEdgeInsets.init(top: 16,
                                                                 leading: 20,
                                                                 bottom: 0,
                                                                 trailing: 20)
            return section
        }
        return layout
    }
}

//MARK: UICollectionViewDelegate, UICollectionViewDataSource
extension ListViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath)
        cell.backgroundColor = .red
        
        return cell
    }
}

//MARK: UISearchBarDelegate
extension ListViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
}



// MARK: SwiftUI
import SwiftUI

struct ListVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView()
            .edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let tabBarVC = MainTabBarController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<ListVCProvider.ContainerView>) -> MainTabBarController {
            return tabBarVC
        }
        
        func updateUIViewController(_ uiViewController: ListVCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ListVCProvider.ContainerView>) {
            
        }
    }
}
