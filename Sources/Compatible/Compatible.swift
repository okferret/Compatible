// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

/// CompatibleWrapper
public struct CompatibleWrapper<Base> {
    
    /// Base
    public let base: Base
    
    /// 构建
    /// - Parameter base: Base
    public init(base: Base) {
        self.base = base
    }
}

/// Compatible
public protocol Compatible: AnyObject {}
extension Compatible {
    
    /// CompatibleWrapper<Self>
    public var hub: CompatibleWrapper<Self> {
        get { .init(base: self) }
        set { }
    }
    
    /// CompatibleWrapper<Self>.Type
    public static var hub: CompatibleWrapper<Self>.Type {
        get { CompatibleWrapper<Self>.self }
        set { }
    }
}

/// CompatibleValue
public protocol CompatibleValue {}
extension CompatibleValue {
    
    /// CompatibleWrapper<Self>
    public var hub: CompatibleWrapper<Self> {
        get { .init(base: self) }
        set { }
    }
    
    /// CompatibleWrapper<Self>.Type
    public static var hub: CompatibleWrapper<Self>.Type {
        get { CompatibleWrapper<Self>.self }
        set { }
    }
}
