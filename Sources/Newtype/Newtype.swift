public protocol Newtype {
    associatedtype Base
    
    var base: Base { get }
    init(base: Base)
}

internal extension Newtype {
    mutating func withRawValue<T>(_ block: (inout Base) throws -> T) rethrows -> T {
        var copy = base
        defer { self = .init(base: copy) }
        return try block(&copy)
    }
}
