//
//  ViperInteractor.swift
//  ACViper
//
//  Created by AppCraft LLC on 8/23/21.
//

public protocol ViperInteractorInput: AnyObject {
    var _output: ViperInteractorOutput? { get set }
}

public protocol ViperInteractorOutput: AnyObject {
    func beginLoading()
    func finishLoading(with error: Error?)
    
    func provideMessage(_ title: String?, message: String?)
}

open class ViperInteractor: ViperInteractorInput {
    
    // MARK: - Props
    public weak var _output: ViperInteractorOutput?
    
    // MARK: - Initialization
    public init() { }

    // MARK: - ViperInteractorInputProtocol
    
    // MARK: - Module functions
    
}
