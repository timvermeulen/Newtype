public protocol Newtype {
    associatedtype RawValue
    
    var rawValue: RawValue { get }
    init(rawValue: RawValue)
}

internal extension Newtype {
    mutating func withRawValue(_ block: (inout RawValue) throws -> Void) rethrows {
        var copy = rawValue
        try block(&copy)
        self = .init(rawValue: copy)
    }
}
