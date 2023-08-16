//
//  ViewController.swift
//  NeonAcademyPageControl
//
//  Created by Kerem Caan on 1.08.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let pageControl : UIPageControl = UIPageControl()
    let titleProp : UILabel = UILabel()
    let imageView : UIImageView = UIImageView()
    let subtitle : UILabel = UILabel()
    let scrollView: UIScrollView = UIScrollView()
    var arrImage = ["person.fill","star.fill","heart","heart.fill","person"]
    var arrImageName = ["person filled","star filled","heart","heart filled","person"]

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }


    func configureUI() {
        
        
        view.addSubview(titleProp)
        titleProp.textAlignment = .center
        titleProp.text = "Title"
        titleProp.font = .boldSystemFont(ofSize: 20)
        titleProp.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
        }
        
        view.addSubview(subtitle)
        subtitle.textAlignment = .center
        subtitle.text = "Subtitle"
        subtitle.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(150)
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
        }
        
        view.addSubview(imageView)
        imageView.image = UIImage(systemName: "heart")
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(300)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(300)
        }
        
        view.addSubview(pageControl)
        pageControl.addTarget(self, action: #selector(pageControlUsed), for: .touchUpInside)
        pageControl.tintColor = .blue
        pageControl.backgroundStyle = .prominent
        pageControl.backgroundColor = .gray
        pageControl.pageIndicatorTintColor = .black
        pageControl.numberOfPages = 3
        pageControl.currentPage = 0
        pageControl.snp.makeConstraints { make in
            make.bottom.equalTo(view.snp.bottom).offset(-100)
            make.centerX.equalToSuperview()
        }
        
        
    }
    @objc func pageControlUsed() {
        let pos = pageControl.currentPage
        imageView.image = UIImage(systemName: arrImage[pos])
        titleProp.text = arrImageName[pos]

    }
}

