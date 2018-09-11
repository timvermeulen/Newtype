public extension Newtype where Self: CustomStringConvertible {
    var description: String {
        return String(describing: base)
    }
}

public extension Newtype where Self: Encodable, Base: Encodable {
    func encode(to encoder: Encoder) throws {
        try base.encode(to: encoder)
    }
}

public extension Newtype where Self: Decodable, Base: Decodable {
    init(from decoder: Decoder) throws {
        self.init(base: try .init(from: decoder))
    }
}

public extension Newtype where Self: Equatable, Base: Equatable {
    static func == (left: Self, right: Self) -> Bool {
        return left.base == right.base
    }
}

public extension Newtype where Self: Hashable, Base: Hashable {
    func hash(into hasher: inout Hasher) {
        base.hash(into: &hasher)
    }
}

public extension Newtype where Self: Comparable, Base: Comparable {
    static func < (left: Self, right: Self) -> Bool {
        return left.base < right.base
    }
}

public extension Newtype where Self: Strideable, Base: Strideable {
    typealias Stride = Base.Stride
    
    static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.base < rhs.base
    }
    
    func distance(to other: Self) -> Base.Stride {
        return base.distance(to: other.base)
    }
    
    func advanced(by stride: Base.Stride) -> Self {
        return .init(base: base.advanced(by: stride))
    }
}
