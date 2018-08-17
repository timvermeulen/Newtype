import XCTest
import Newtype

struct CustomStringConvertibleWrapper<T: CustomStringConvertible>: Newtype, CustomStringConvertible {
    let rawValue: T
}

struct EncodableWrapper<T: Encodable>: Newtype, Encodable {
    let rawValue: T
}

struct DecodableWrapper<T: Decodable>: Newtype, Decodable {
    let rawValue: T
}

struct CodableWrapper<T: Codable>: Newtype, Codable {
    let rawValue: T
}

struct EquatableWrapper<T: Equatable>: Newtype, Equatable {
    let rawValue: T
}

struct HashableWrapper<T: Hashable>: Newtype, Hashable {
    let rawValue: T
}

struct ComparableWrapper<T: Comparable>: Newtype, Comparable {
    let rawValue: T
}

struct StrideableWrapper<T: Strideable>: Newtype, Strideable {
    let rawValue: T
}

struct NumericWrapper<T: Numeric>: Newtype, Numeric {
    let rawValue: T
}

struct BinaryIntegerWrapper<T: BinaryInteger>: Newtype, BinaryInteger {
    let rawValue: T
}

struct SignedNumericWrapper<T: SignedNumeric>: Newtype, SignedNumeric {
    let rawValue: T
}

struct SignedIntegerWrapper<T: SignedInteger>: Newtype, SignedInteger {
    let rawValue: T
}

struct UnsignedIntegerWrapper<T: UnsignedInteger>: Newtype, UnsignedInteger {
    let rawValue: T
}

struct FixedWidthIntegerWrapper<T: FixedWidthInteger>: Newtype, FixedWidthInteger {
    let rawValue: T
}

struct FloatingPointWrapper<T: FloatingPoint>: Newtype, FloatingPoint {
    let rawValue: T
}

struct BinaryFloatingPointWrapper<T: BinaryFloatingPoint>: Newtype, BinaryFloatingPoint {
    let rawValue: T
}

struct ExpressibleByIntegerLiteralWrapper<T: ExpressibleByIntegerLiteral>: Newtype, ExpressibleByIntegerLiteral {
    let rawValue: T
}

struct ExpressibleByUnicodeScalarLiteralWrapper<T: ExpressibleByUnicodeScalarLiteral>: Newtype, ExpressibleByUnicodeScalarLiteral {
    let rawValue: T
}

struct ExpressibleByExtendedGraphemeClusterLiteralWrapper<T: ExpressibleByExtendedGraphemeClusterLiteral>: Newtype, ExpressibleByExtendedGraphemeClusterLiteral {
    let rawValue: T
}

struct ExpressibleByStringLiteralWrapper<T: ExpressibleByStringLiteral>: Newtype, ExpressibleByStringLiteral {
    let rawValue: T
}

struct ExpressibleByIntegerLiteralWrapper<T: ExpressibleByIntegerLiteral>: Newtype, ExpressibleByIntegerLiteral {
    let rawValue: T
}

struct ExpressibleByFloatLiteralWrapper<T: ExpressibleByFloatLiteral>: Newtype, ExpressibleByFloatLiteral {
    let rawValue: T
}

struct ExpressibleByArrayLiteralWrapper<T: ExpressibleByArrayLiteral>: Newtype, ExpressibleByArrayLiteral {
    let rawValue: T
}

struct ExpressibleByDictionaryLiteralWrapper<T: ExpressibleByDictionaryLiteral>: Newtype, ExpressibleByDictionaryLiteral {
    let rawValue: T
}

struct ExpressibleByNilLiteralWrapper<T: ExpressibleByNilLiteral>: Newtype, ExpressibleByNilLiteral {
    let rawValue: T
}

struct ExpressibleByBooleanLiteralWrapper<T: ExpressibleByBooleanLiteral>: Newtype, ExpressibleByBooleanLiteral {
    let rawValue: T
}
