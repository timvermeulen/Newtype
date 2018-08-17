public extension Newtype where Self: CustomStringConvertible {
    var description: String {
        return String(describing: rawValue)
    }
}

public extension Newtype where Self: Encodable, RawValue: Encodable {
    func encode(to encoder: Encoder) throws {
        try rawValue.encode(to: encoder)
    }
}

public extension Newtype where Self: Decodable, RawValue: Decodable {
    init(from decoder: Decoder) throws {
        self.init(rawValue: try .init(from: decoder))
    }
}

public extension Newtype where Self: Equatable, RawValue: Equatable {
    static func == (left: Self, right: Self) -> Bool {
        return left.rawValue == right.rawValue
    }
}

public extension Newtype where Self: Hashable, RawValue: Hashable {
    func hash(into hasher: inout Hasher) {
        rawValue.hash(into: &hasher)
    }
}

public extension Newtype where Self: Comparable, RawValue: Comparable {
    static func < (left: Self, right: Self) -> Bool {
        return left.rawValue < right.rawValue
    }
}

public extension Newtype where Self: Strideable, RawValue: Strideable {
    typealias Stride = RawValue.Stride
    
    static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
    
    func distance(to other: Self) -> RawValue.Stride {
        return rawValue.distance(to: other.rawValue)
    }
    
    func advanced(by stride: RawValue.Stride) -> Self {
        return .init(rawValue: rawValue.advanced(by: stride))
    }
}
