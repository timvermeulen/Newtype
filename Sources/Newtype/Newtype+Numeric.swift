public extension Newtype where Self: Numeric, RawValue: Numeric {
    init(integerLiteral value: RawValue.IntegerLiteralType) {
        self.init(rawValue: .init(integerLiteral: value))
    }
    
    init?<T: BinaryInteger>(exactly source: T) {
        guard let rawValue = RawValue(exactly: source) else { return nil }
        self.init(rawValue: rawValue)
    }
    
    var magnitude: RawValue.Magnitude {
        return rawValue.magnitude
    }
    
    static func + (lhs: Self, rhs: Self) -> Self {
        return .init(rawValue: lhs.rawValue + rhs.rawValue)
    }
    
    static func - (lhs: Self, rhs: Self) -> Self {
        return .init(rawValue: lhs.rawValue - rhs.rawValue)
    }
    
    static func * (lhs: Self, rhs: Self) -> Self {
        return .init(rawValue: lhs.rawValue * rhs.rawValue)
    }
    
    static func += (lhs: inout Self, rhs: Self) {
        lhs = lhs + rhs
    }
    
    static func -= (lhs: inout Self, rhs: Self) {
        lhs = lhs - rhs
    }
    
    static func *= (lhs: inout Self, rhs: Self) {
        lhs = lhs * rhs
    }
}

public extension Newtype where Self: BinaryInteger, RawValue: BinaryInteger {
    static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
    
    static var isSigned: Bool {
        return RawValue.isSigned
    }
    
    var description: String {
        return rawValue.description
    }
    
    static func <<= <RHS: BinaryInteger>(lhs: inout Self, rhs: RHS) {
        lhs = lhs << rhs
    }
    
    static func << <RHS: BinaryInteger>(lhs: Self, rhs: RHS) -> Self {
        return .init(rawValue: lhs.rawValue << rhs)
    }
    
    static func >>= <RHS: BinaryInteger>(lhs: inout Self, rhs: RHS) {
        lhs = lhs >> rhs
    }
    
    static func >> <RHS: BinaryInteger>(lhs: Self, rhs: RHS) -> Self {
        return .init(rawValue: lhs.rawValue >> rhs)
    }
    
    static func ^ (lhs: Self, rhs: Self) -> Self {
        return .init(rawValue: lhs.rawValue ^ rhs.rawValue)
    }
    
    static func ^= (lhs: inout Self, rhs: Self) {
        lhs = lhs ^ rhs
    }
    
    static func | (lhs: Self, rhs: Self) -> Self {
        return .init(rawValue: lhs.rawValue | rhs.rawValue)
    }
    
    static func |= (lhs: inout Self, rhs: Self) {
        lhs = lhs | rhs
    }
    
    static func & (lhs: Self, rhs: Self) -> Self {
        return .init(rawValue: lhs.rawValue & rhs.rawValue)
    }
    
    static func &= (lhs: inout Self, rhs: Self) {
        lhs = lhs & rhs
    }
    
    static prefix func ~ (x: Self) -> Self {
        return .init(rawValue: ~x.rawValue)
    }
    
    init?<T: BinaryFloatingPoint>(exactly source: T) {
        guard let rawValue = RawValue(exactly: source) else { return nil }
        self.init(rawValue: rawValue)
    }
    
    init<T: BinaryInteger>(clamping source: T) {
        self.init(rawValue: .init(clamping: source))
    }
    
    init<T: BinaryInteger>(truncatingIfNeeded source: T) {
        self.init(rawValue: .init(truncatingIfNeeded: source))
    }
    
    init<T: BinaryFloatingPoint>(_ source: T) {
        self.init(rawValue: .init(source))
    }
    
    init<T: BinaryInteger>(_ source: T) {
        self.init(rawValue: .init(source))
    }
    
    var words: RawValue.Words {
        return rawValue.words
    }
    
    var bitWidth: Int {
        return rawValue.bitWidth
    }
    
    var trailingZeroBitCount: Int {
        return rawValue.trailingZeroBitCount
    }
    
    static func / (lhs: Self, rhs: Self) -> Self {
        return .init(rawValue: lhs.rawValue / rhs.rawValue)
    }
    
    static func /= (lhs: inout Self, rhs: Self) {
        lhs = lhs / rhs
    }
    
    static func % (lhs: Self, rhs: Self) -> Self {
        return .init(rawValue: lhs.rawValue % rhs.rawValue)
    }
    
    static func %= (lhs: inout Self, rhs: Self) {
        lhs = lhs % rhs
    }
}

public extension Newtype where Self: SignedInteger, RawValue: SignedInteger {
    static var isSigned: Bool {
        return RawValue.isSigned
    }
    
    var description: String {
        return rawValue.description
    }
}

public extension Newtype where Self: UnsignedInteger, RawValue: UnsignedInteger {
    static var isSigned: Bool {
        return RawValue.isSigned
    }
    
    var description: String {
        return rawValue.description
    }
}

public extension Newtype where Self: FixedWidthInteger, RawValue: FixedWidthInteger {
    static func <<= <RHS: BinaryInteger>(lhs: inout Self, rhs: RHS) {
        lhs = lhs << rhs
    }
    
    static func << <RHS: BinaryInteger>(lhs: Self, rhs: RHS) -> Self {
        return .init(rawValue: lhs.rawValue << rhs)
    }
    
    static func >>= <RHS: BinaryInteger>(lhs: inout Self, rhs: RHS) {
        lhs = lhs >> rhs
    }
    
    static func >> <RHS: BinaryInteger>(lhs: Self, rhs: RHS) -> Self {
        return .init(rawValue: lhs.rawValue >> rhs)
    }
    
    static prefix func ~ (x: Self) -> Self {
        return .init(rawValue: ~x.rawValue)
    }
    
    static func &= (lhs: inout Self, rhs: Self) {
        lhs.withRawValue { $0 &= rhs.rawValue }
    }
    
    static func |= (lhs: inout Self, rhs: Self) {
        lhs.withRawValue { $0 |= rhs.rawValue }
    }
    
    static func ^= (lhs: inout Self, rhs: Self) {
        lhs.withRawValue { $0 ^= rhs.rawValue }
    }
    
    init?<T: BinaryFloatingPoint>(exactly source: T) {
        guard let rawValue = RawValue(exactly: source) else { return nil }
        self.init(rawValue: rawValue)
    }
    
    init<T: BinaryInteger>(clamping source: T) {
        self.init(rawValue: .init(clamping: source))
    }
    
    init<T: BinaryInteger>(truncatingIfNeeded source: T) {
        self.init(rawValue: .init(truncatingIfNeeded: source))
    }
    
    init<T: BinaryFloatingPoint>(_ source: T) {
        self.init(rawValue: .init(source))
    }
    
    var bitWidth: Int {
        return rawValue.bitWidth
    }
    
    init(_truncatingBits: UInt) {
        self.init(rawValue: .init(_truncatingBits: _truncatingBits))
    }
    
    init?<T: BinaryInteger>(exactly source: T) {
        guard let rawValue = RawValue(exactly: source) else { return nil }
        self.init(rawValue: rawValue)
    }
    
    static var bitWidth: Int {
        return RawValue.bitWidth
    }
    
    static var max: Self {
        return .init(rawValue: .max)
    }
    
    static var min: Self {
        return .init(rawValue: .min)
    }
    
    func addingReportingOverflow(_ rhs: Self) -> (partialValue: Self, overflow: Bool) {
        let (partialValue, overflow) = rawValue.addingReportingOverflow(rhs.rawValue)
        return (.init(rawValue: partialValue), overflow)
    }
    
    func subtractingReportingOverflow(_ rhs: Self) -> (partialValue: Self, overflow: Bool) {
        let (partialValue, overflow) = rawValue.subtractingReportingOverflow(rhs.rawValue)
        return (.init(rawValue: partialValue), overflow)
    }
    
    func multipliedReportingOverflow(by rhs: Self) -> (partialValue: Self, overflow: Bool) {
        let (partialValue, overflow) = rawValue.multipliedReportingOverflow(by: rhs.rawValue)
        return (.init(rawValue: partialValue), overflow)
    }
    
    func dividedReportingOverflow(by rhs: Self) -> (partialValue: Self, overflow: Bool) {
        let (partialValue, overflow) = rawValue.dividedReportingOverflow(by: rhs.rawValue)
        return (.init(rawValue: partialValue), overflow)
    }
    
    func remainderReportingOverflow(dividingBy rhs: Self) -> (partialValue: Self, overflow: Bool) {
        let (partialValue, overflow) = rawValue.remainderReportingOverflow(dividingBy: rhs.rawValue)
        return (.init(rawValue: partialValue), overflow)
    }
    
    func multipliedFullWidth(by other: Self) -> (high: Self, low: RawValue.Magnitude) {
        let (high, low) = rawValue.multipliedFullWidth(by: other.rawValue)
        return (.init(rawValue: high), low)
    }
    
    func dividingFullWidth(_ dividend: (high: Self, low: RawValue.Magnitude)) -> (quotient: Self, remainder: Self) {
        let (quotient, remainder) = rawValue.dividingFullWidth((dividend.high.rawValue, dividend.low))
        return (.init(rawValue: quotient), .init(rawValue: remainder))
    }
    
    var nonzeroBitCount: Int {
        return rawValue.nonzeroBitCount
    }
    
    var leadingZeroBitCount: Int {
        return rawValue.leadingZeroBitCount
    }
    
    var byteSwapped: Self {
        return .init(rawValue: rawValue.byteSwapped)
    }
}

public extension Newtype where Self: FloatingPoint, RawValue: FloatingPoint {
    mutating func round(_ rule: FloatingPointRoundingRule) {
        withRawValue { $0.round(rule) }
    }
    
    var magnitude: Self {
        #if swift(>=4.2)
        return .init(rawValue: rawValue.magnitude)
        #else
        return .init(rawValue: rawValue.magnitude as! RawValue)
        #endif
    }
    
    static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
    
    #if swift(>=4.2)
    init<Source: BinaryInteger>(_ value: Source) {
        self.init(rawValue: .init(value))
    }
    #endif
    
    init(sign: FloatingPointSign, exponent: RawValue.Exponent, significand: Self) {
        self.init(rawValue: .init(sign: sign, exponent: exponent, significand: significand.rawValue))
    }
    
    init(signOf: Self, magnitudeOf: Self) {
        self.init(rawValue: .init(signOf: signOf.rawValue, magnitudeOf: magnitudeOf.rawValue))
    }
    
    init(_ value: UInt8) {
        self.init(rawValue: .init(value))
    }
    
    init(_ value: Int8) {
        self.init(rawValue: .init(value))
    }
    
    init(_ value: UInt16) {
        self.init(rawValue: .init(value))
    }
    
    init(_ value: Int16) {
        self.init(rawValue: .init(value))
    }
    
    init(_ value: UInt32) {
        self.init(rawValue: .init(value))
    }
    
    init(_ value: Int32) {
        self.init(rawValue: .init(value))
    }
    
    init(_ value: UInt64) {
        self.init(rawValue: .init(value))
    }
    
    init(_ value: Int64) {
        self.init(rawValue: .init(value))
    }
    
    init(_ value: UInt) {
        self.init(rawValue: .init(value))
    }
    
    init(_ value: Int) {
        self.init(rawValue: .init(value))
    }
    
    static var radix: Int {
        return RawValue.radix
    }
    
    static var nan: Self {
        return .init(rawValue: .nan)
    }
    
    static var signalingNaN: Self {
        return .init(rawValue: .signalingNaN)
    }
    
    static var infinity: Self {
        return .init(rawValue: .infinity)
    }
    
    static var greatestFiniteMagnitude: Self {
        return .init(rawValue: .greatestFiniteMagnitude)
    }
    
    static var pi: Self {
        return .init(rawValue: .pi)
    }
    
    var ulp: Self {
        return .init(rawValue: rawValue.ulp)
    }
    
    static var leastNormalMagnitude: Self {
        return .init(rawValue: .leastNormalMagnitude)
    }
    
    static var leastNonzeroMagnitude: Self {
        return .init(rawValue: .leastNonzeroMagnitude)
    }
    
    var sign: FloatingPointSign {
        return rawValue.sign
    }
    
    var exponent: RawValue.Exponent {
        return rawValue.exponent
    }
    
    var significand: Self {
        return .init(rawValue: rawValue.significand)
    }
    
    static func / (lhs: Self, rhs: Self) -> Self {
        return .init(rawValue: lhs.rawValue / rhs.rawValue)
    }
    
    static func /= (lhs: inout Self, rhs: Self) {
        lhs = lhs / rhs
    }
    
    mutating func formRemainder(dividingBy other: Self) {
        withRawValue { $0.formRemainder(dividingBy: other.rawValue) }
    }
    
    mutating func formTruncatingRemainder(dividingBy other: Self) {
        withRawValue { $0.formTruncatingRemainder(dividingBy: other.rawValue) }
    }
    
    mutating func formSquareRoot() {
        withRawValue { $0.formSquareRoot() }
    }
    
    mutating func addProduct(_ lhs: Self, _ rhs: Self) {
        withRawValue { $0.addProduct(lhs.rawValue, rhs.rawValue) }
    }
    
    var nextUp: Self {
        return .init(rawValue: rawValue.nextUp)
    }
    
    func isEqual(to other: Self) -> Bool {
        return rawValue.isEqual(to: other.rawValue)
    }
    
    func isLess(than other: Self) -> Bool {
        return rawValue.isLess(than: other.rawValue)
    }
    
    func isLessThanOrEqualTo(_ other: Self) -> Bool {
        return rawValue.isLessThanOrEqualTo(other.rawValue)
    }
    
    func isTotallyOrdered(belowOrEqualTo other: Self) -> Bool {
        return rawValue.isTotallyOrdered(belowOrEqualTo: other.rawValue)
    }
    
    var isNormal: Bool {
        return rawValue.isNormal
    }
    
    var isFinite: Bool {
        return rawValue.isFinite
    }
    
    var isZero: Bool {
        return rawValue.isZero
    }
    
    var isSubnormal: Bool {
        return rawValue.isSubnormal
    }
    
    var isInfinite: Bool {
        return rawValue.isInfinite
    }
    
    var isNaN: Bool {
        return rawValue.isNaN
    }
    
    var isSignalingNaN: Bool {
        return rawValue.isSignalingNaN
    }
    
    var isCanonical: Bool {
        return rawValue.isCanonical
    }
}

public extension Newtype where Self: BinaryFloatingPoint, RawValue: BinaryFloatingPoint {    
    init?<T: BinaryInteger>(exactly source: T) {
        guard let rawValue = RawValue(exactly: source) else { return nil }
        self.init(rawValue: rawValue)
    }
    
    #if swift(>=4.2)
    init<Source: BinaryInteger>(_ value: Source) {
        self.init(rawValue: .init(value))
    }
    #endif
    
    init(_ value: Float) {
        self.init(rawValue: .init(value))
    }
    
    init(_ value: Double) {
        self.init(rawValue: .init(value))
    }
    
    init(_ value: Float80) {
        self.init(rawValue: .init(value))
    }
    
    static var radix: Int {
        return RawValue.radix
    }
    
    func isTotallyOrdered(belowOrEqualTo other: Self) -> Bool {
        return rawValue.isTotallyOrdered(belowOrEqualTo: other.rawValue)
    }
    
    init(signOf: Self, magnitudeOf: Self) {
        self.init(rawValue: .init(signOf: signOf.rawValue, magnitudeOf: magnitudeOf.rawValue))
    }
    
    init(sign: FloatingPointSign, exponentBitPattern: RawValue.RawExponent, significandBitPattern: RawValue.RawSignificand) {
        self.init(rawValue: .init(sign: sign, exponentBitPattern: exponentBitPattern, significandBitPattern: significandBitPattern))
    }
    
    static var exponentBitCount: Int {
        return RawValue.exponentBitCount
    }
    
    static var significandBitCount: Int {
        return RawValue.significandBitCount
    }
    
    var exponentBitPattern: RawValue.RawExponent {
        return rawValue.exponentBitPattern
    }
    
    var significandBitPattern: RawValue.RawSignificand {
        return rawValue.significandBitPattern
    }
    
    var binade: Self {
        return .init(rawValue: rawValue.binade)
    }
    
    var significandWidth: Int {
        return rawValue.significandWidth
    }
}
