public extension Newtype where Self: ExpressibleByStringLiteral, Base: ExpressibleByStringLiteral {
    init(stringLiteral value: Base.StringLiteralType) {
        self.init(base: .init(stringLiteral: value))
    }
}

public extension Newtype where Self: ExpressibleByIntegerLiteral, Base: ExpressibleByIntegerLiteral {
    init(integerLiteral value: Base.IntegerLiteralType) {
        self.init(base: .init(integerLiteral: value))
    }
}

public extension Newtype where Self: ExpressibleByFloatLiteral, Base: ExpressibleByFloatLiteral {
    init(floatLiteral value: Base.FloatLiteralType) {
        self.init(base: .init(floatLiteral: value))
    }
}

public extension Newtype where Self: ExpressibleByArrayLiteral, Base: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Base.ArrayLiteralElement...) {
        typealias Init = ([Base.ArrayLiteralElement]) -> Base
        let literalInit = unsafeBitCast(Base.init(arrayLiteral:), to: Init.self)
        self.init(base: literalInit(elements))
    }
}

public extension Newtype where Self: ExpressibleByDictionaryLiteral, Base: ExpressibleByDictionaryLiteral {
    init(dictionaryLiteral elements: (Base.Key, Base.Value)...) {
        typealias Init = ([(Base.Key, Base.Value)]) -> Base
        let literalInit = unsafeBitCast(Base.init(dictionaryLiteral:), to: Init.self)
        self.init(base: literalInit(elements))
    }
}

public extension Newtype where Self: ExpressibleByNilLiteral, Base: ExpressibleByNilLiteral {
    init(nilLiteral: ()) {
        self.init(base: nil)
    }
}

public extension Newtype where Self: ExpressibleByBooleanLiteral, Base: ExpressibleByBooleanLiteral {
    init(booleanLiteral value: Base.BooleanLiteralType) {
        self.init(base: .init(booleanLiteral: value))
    }
}
