import XCTest
import Newtype

struct CustomStringConvertibleWrapper<T: CustomStringConvertible>: Newtype, CustomStringConvertible {
    let base: T
}

struct EncodableWrapper<T: Encodable>: Newtype, Encodable {
    let base: T
}

struct DecodableWrapper<T: Decodable>: Newtype, Decodable {
    let base: T
}

struct CodableWrapper<T: Codable>: Newtype, Codable {
    let base: T
}

struct EquatableWrapper<T: Equatable>: Newtype, Equatable {
    let base: T
}

struct HashableWrapper<T: Hashable>: Newtype, Hashable {
    let base: T
}

struct ComparableWrapper<T: Comparable>: Newtype, Comparable {
    let base: T
}

struct StrideableWrapper<T: Strideable>: Newtype, Strideable {
    let base: T
}

struct NumericWrapper<T: Numeric>: Newtype, Numeric {
    let base: T
}

struct BinaryIntegerWrapper<T: BinaryInteger>: Newtype, BinaryInteger {
    let base: T
}

struct SignedNumericWrapper<T: SignedNumeric>: Newtype, SignedNumeric {
    let base: T
}

struct SignedIntegerWrapper<T: SignedInteger>: Newtype, SignedInteger {
    let base: T
}

struct UnsignedIntegerWrapper<T: UnsignedInteger>: Newtype, UnsignedInteger {
    let base: T
}

struct FixedWidthIntegerWrapper<T: FixedWidthInteger>: Newtype, FixedWidthInteger {
    let base: T
}

struct FloatingPointWrapper<T: FloatingPoint>: Newtype, FloatingPoint {
    let base: T
}

struct BinaryFloatingPointWrapper<T: BinaryFloatingPoint>: Newtype, BinaryFloatingPoint {
    let base: T
}

struct ExpressibleByIntegerLiteralWrapper<T: ExpressibleByIntegerLiteral>: Newtype, ExpressibleByIntegerLiteral {
    let base: T
}

struct ExpressibleByStringLiteralWrapper<T: ExpressibleByStringLiteral>: Newtype, ExpressibleByStringLiteral {
    let base: T
}

struct ExpressibleByFloatLiteralWrapper<T: ExpressibleByFloatLiteral>: Newtype, ExpressibleByFloatLiteral {
    let base: T
}

struct ExpressibleByArrayLiteralWrapper<T: ExpressibleByArrayLiteral>: Newtype, ExpressibleByArrayLiteral {
    let base: T
}

struct ExpressibleByDictionaryLiteralWrapper<T: ExpressibleByDictionaryLiteral>: Newtype, ExpressibleByDictionaryLiteral {
    let base: T
}

struct ExpressibleByNilLiteralWrapper<T: ExpressibleByNilLiteral>: Newtype, ExpressibleByNilLiteral {
    let base: T
}

struct ExpressibleByBooleanLiteralWrapper<T: ExpressibleByBooleanLiteral>: Newtype, ExpressibleByBooleanLiteral {
    let base: T
}

struct SetAlgebraWrapper<T: SetAlgebra>: Newtype, SetAlgebra {
    let base: T
}

struct IteratorProtocolWrapper<T: IteratorProtocol>: Newtype, IteratorProtocol {
    let base: T
}

struct SequenceWrapper<T: Sequence>: Newtype, Sequence {
    let base: T
}

struct CollectionWrapper<T: Collection>: Newtype, Collection {
    let base: T
}

struct StringWrapper: Newtype, ExpressibleByStringLiteral {
    let base: String
}

struct IntWrapper: Newtype, ExpressibleByIntegerLiteral {
    let base: Int
}

struct FloatWrapper: Newtype, ExpressibleByFloatLiteral {
    let base: Float
}
