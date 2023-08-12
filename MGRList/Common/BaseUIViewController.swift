//
//  BaseUIViewController.swift
//  MGRList
//
//  Created by Millfford Robert Lima Bradshaw on 31/07/23.
//

import UIKit

public protocol ViewConfiguration: AnyObject {
    func buildViewHierarchy()
    func setupConstraints()
    func configureViews()
    func buildLayout()
}

public extension ViewConfiguration {
    func buildLayout() {
        buildViewHierarchy()
        setupConstraints()
        configureViews()
    }
    
    func configureViews() {}
}

public class BaseUIViewController<Interactor, V: UIView>: UIViewController, ViewConfiguration {
    var interactor: Interactor
    var rootView = V()
    
    init(interactor: Interactor) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        buildLayout()
    }
    
    public override func loadView() {
        view = rootView
    }
    
    public func buildViewHierarchy() {}
    public func setupConstraints() {}
}

public extension BaseUIViewController where Interactor == Void {
    convenience init(_ interactor: Interactor = ()) {
        self.init(interactor: interactor)
    }
}
