//
//  ViewController.swift
//  Homework9
//
//  Created by Светлана on 26.09.22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: - Private properties
    
    private var isFirstLoad = true
    
    // MARK: - Override methods
    
    override func viewDidLayoutSubviews() {
        if isFirstLoad {
            initListener(view: self.view)
            isFirstLoad = false
        }
    }
    
    // MARK: - Private methods
    
    private func initListener(view: UIView) {
        let gesture = UITapGestureRecognizer(
            target: self,
            action: #selector(onViewClickListener(_sender:))
        )
        view.addGestureRecognizer(gesture)
    }
    
    private func createSquare(
        on view: UIView
    ){
        let square = UIView()
        square.backgroundColor = .randomColor
        view.addSubview(square)
        
        let maxSize = min(view.frame.width, view.frame.height) / 2
        
        let randomSize = CGFloat.getRandomSize(maxValue: maxSize)
        let randomCoordinates = CGFloat.getRandomCoordinates(
            maxX: view.frame.width - randomSize,
            maxY: view.frame.height - randomSize
        )
        
        square.snp.makeConstraints { (make) in
            make.height
                .width
                .equalTo(randomSize)
            make.top
                .equalTo(randomCoordinates.0)
            make.leading
                .equalTo(randomCoordinates.1)
        }
        
        initListener(view: square)
    }
    
    @objc private func onViewClickListener(_sender: UITapGestureRecognizer) {
        guard let currentView = _sender.view else { return }
        
        for _ in 0..<3 {
            createSquare(on: currentView)
        }
    }
}
