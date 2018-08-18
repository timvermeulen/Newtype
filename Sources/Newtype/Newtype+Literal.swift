public extension Newtype where Self: ExpressibleByStringLiteral, RawValue: ExpressibleByStringLiteral {
    init(stringLiteral value: RawValue.StringLiteralType) {
        self.init(rawValue: .init(stringLiteral: value))
    }
}

public extension Newtype where Self: ExpressibleByIntegerLiteral, RawValue: ExpressibleByIntegerLiteral {
    init(integerLiteral value: RawValue.IntegerLiteralType) {
        self.init(rawValue: .init(integerLiteral: value))
    }
}

public extension Newtype where Self: ExpressibleByFloatLiteral, RawValue: ExpressibleByFloatLiteral {
    init(floatLiteral value: RawValue.FloatLiteralType) {
        self.init(rawValue: .init(floatLiteral: value))
    }
}

public extension Newtype where Self: ExpressibleByArrayLiteral, RawValue: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: RawValue.ArrayLiteralElement...) {
        typealias Init = ([RawValue.ArrayLiteralElement]) -> RawValue
        let literalInit = unsafeBitCast(RawValue.init(arrayLiteral:), to: Init.self)
        self.init(rawValue: literalInit(elements))
    }
}

public extension Newtype where Self: ExpressibleByDictionaryLiteral, RawValue: ExpressibleByDictionaryLiteral {
    init(dictionaryLiteral elements: (RawValue.Key, RawValue.Value)...) {
        typealias Init = ([(RawValue.Key, RawValue.Value)]) -> RawValue
        let literalInit = unsafeBitCast(RawValue.init(dictionaryLiteral:), to: Init.self)
        self.init(rawValue: literalInit(elements))
    }
}

public extension Newtype where Self: ExpressibleByNilLiteral, RawValue: ExpressibleByNilLiteral {
    init(nilLiteral: ()) {
        self.init(rawValue: nil)
    }
}

public extension Newtype where Self: ExpressibleByBooleanLiteral, RawValue: ExpressibleByBooleanLiteral {
    init(booleanLiteral value: RawValue.BooleanLiteralType) {
        self.init(rawValue: .init(booleanLiteral: value))
    }
}
