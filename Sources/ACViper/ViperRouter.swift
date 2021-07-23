//
//  ViperRouter.swift
//  ACViper
//
//  Created by AppCraft LLC on 8/23/21.
//

import UIKit

public protocol ViperRouterInput: AnyObject {
    var _mainController: UIViewController? { get set }
    
    func dismiss(animated: Bool)
    func goBack(animated: Bool)
    func goToRoot(animated: Bool)
}

open class ViperRouter: ViperRouterInput {
    
    // MARK: - Props
    public weak var _mainController: UIViewController?
    
    // MARK: - Initialization
    public init() { }
    
    // MARK: - ViperRouterInputProtocol
    
    open func dismiss(animated: Bool) {
        DispatchQueue.main.async {
            self._mainController?.dismiss(animated: animated, completion: nil)
        }
    }
    
    open func goBack(animated: Bool) {
        DispatchQueue.main.async {
            self._mainController?.navigationController?.popViewController(animated: animated)
        }
    }
    
    open func goToRoot(animated: Bool) {
        DispatchQueue.main.async {
            self._mainController?.navigationController?.popToRootViewController(animated: animated)
        }
    }
    
    // MARK: - Module functions
    
    open func present(_ viewController: UIViewController, animated: Bool) {
        DispatchQueue.main.async {
            self._mainController?.present(viewController, animated: animated, completion: nil)
        }
    }
    
    open func push(to viewController: UIViewController, animated: Bool) {
        DispatchQueue.main.async {
            self._mainController?.navigationController?.pushViewController(viewController, animated: animated)
        }
    }
        
}
