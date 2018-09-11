public extension Newtype where Self: Numeric, Base: Numeric {
    init(integerLiteral value: Base.IntegerLiteralType) {
        self.init(base: .init(integerLiteral: value))
    }
    
    init?<T: BinaryInteger>(exactly source: T) {
        guard let rawValue = Base(exactly: source) else { return nil }
        self.init(base: rawValue)
    }
    
    var magnitude: Base.Magnitude {
        return base.magnitude
    }
    
    static func + (lhs: Self, rhs: Self) -> Self {
        return .init(base: lhs.base + rhs.base)
    }
    
    static func - (lhs: Self, rhs: Self) -> Self {
        return .init(base: lhs.base - rhs.base)
    }
    
    static func * (lhs: Self, rhs: Self) -> Self {
        return .init(base: lhs.base * rhs.base)
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

public extension Newtype where Self: BinaryInteger, Base: BinaryInteger {
    static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.base < rhs.base
    }
    
    static var isSigned: Bool {
        return Base.isSigned
    }
    
    var description: String {
        return base.description
    }
    
    static func <<= <RHS: BinaryInteger>(lhs: inout Self, rhs: RHS) {
        lhs = lhs << rhs
    }
    
    static func << <RHS: BinaryInteger>(lhs: Self, rhs: RHS) -> Self {
        return .init(base: lhs.base << rhs)
    }
    
    static func >>= <RHS: BinaryInteger>(lhs: inout Self, rhs: RHS) {
        lhs = lhs >> rhs
    }
    
    static func >> <RHS: BinaryInteger>(lhs: Self, rhs: RHS) -> Self {
        return .init(base: lhs.base >> rhs)
    }
    
    static func ^ (lhs: Self, rhs: Self) -> Self {
        return .init(base: lhs.base ^ rhs.base)
    }
    
    static func ^= (lhs: inout Self, rhs: Self) {
        lhs = lhs ^ rhs
    }
    
    static func | (lhs: Self, rhs: Self) -> Self {
        return .init(base: lhs.base | rhs.base)
    }
    
    static func |= (lhs: inout Self, rhs: Self) {
        lhs = lhs | rhs
    }
    
    static func & (lhs: Self, rhs: Self) -> Self {
        return .init(base: lhs.base & rhs.base)
    }
    
    static func &= (lhs: inout Self, rhs: Self) {
        lhs = lhs & rhs
    }
    
    static prefix func ~ (x: Self) -> Self {
        return .init(base: ~x.base)
    }
    
    init?<T: BinaryFloatingPoint>(exactly source: T) {
        guard let rawValue = Base(exactly: source) else { return nil }
        self.init(base: rawValue)
    }
    
    init<T: BinaryInteger>(clamping source: T) {
        self.init(base: .init(clamping: source))
    }
    
    init<T: BinaryInteger>(truncatingIfNeeded source: T) {
        self.init(base: .init(truncatingIfNeeded: source))
    }
    
    init<T: BinaryFloatingPoint>(_ source: T) {
        self.init(base: .init(source))
    }
    
    init<T: BinaryInteger>(_ source: T) {
        self.init(base: .init(source))
    }
    
    var words: Base.Words {
        return base.words
    }
    
    var bitWidth: Int {
        return base.bitWidth
    }
    
    var trailingZeroBitCount: Int {
        return base.trailingZeroBitCount
    }
    
    static func / (lhs: Self, rhs: Self) -> Self {
        return .init(base: lhs.base / rhs.base)
    }
    
    static func /= (lhs: inout Self, rhs: Self) {
        lhs = lhs / rhs
    }
    
    static func % (lhs: Self, rhs: Self) -> Self {
        return .init(base: lhs.base % rhs.base)
    }
    
    static func %= (lhs: inout Self, rhs: Self) {
        lhs = lhs % rhs
    }
}

public extension Newtype where Self: SignedInteger, Base: SignedInteger {
    static var isSigned: Bool {
        return Base.isSigned
    }
    
    var description: String {
        return base.description
    }
}

public extension Newtype where Self: UnsignedInteger, Base: UnsignedInteger {
    static var isSigned: Bool {
        return Base.isSigned
    }
    
    var description: String {
        return base.description
    }
}

public extension Newtype where Self: FixedWidthInteger, Base: FixedWidthInteger {
    static func <<= <RHS: BinaryInteger>(lhs: inout Self, rhs: RHS) {
        lhs = lhs << rhs
    }
    
    static func << <RHS: BinaryInteger>(lhs: Self, rhs: RHS) -> Self {
        return .init(base: lhs.base << rhs)
    }
    
    static func >>= <RHS: BinaryInteger>(lhs: inout Self, rhs: RHS) {
        lhs = lhs >> rhs
    }
    
    static func >> <RHS: BinaryInteger>(lhs: Self, rhs: RHS) -> Self {
        return .init(base: lhs.base >> rhs)
    }
    
    static prefix func ~ (x: Self) -> Self {
        return .init(base: ~x.base)
    }
    
    static func &= (lhs: inout Self, rhs: Self) {
        lhs.withRawValue { $0 &= rhs.base }
    }
    
    static func |= (lhs: inout Self, rhs: Self) {
        lhs.withRawValue { $0 |= rhs.base }
    }
    
    static func ^= (lhs: inout Self, rhs: Self) {
        lhs.withRawValue { $0 ^= rhs.base }
    }
    
    init?<T: BinaryFloatingPoint>(exactly source: T) {
        guard let rawValue = Base(exactly: source) else { return nil }
        self.init(base: rawValue)
    }
    
    init<T: BinaryInteger>(clamping source: T) {
        self.init(base: .init(clamping: source))
    }
    
    init<T: BinaryInteger>(truncatingIfNeeded source: T) {
        self.init(base: .init(truncatingIfNeeded: source))
    }
    
    init<T: BinaryFloatingPoint>(_ source: T) {
        self.init(base: .init(source))
    }
    
    var bitWidth: Int {
        return base.bitWidth
    }
    
    init(_truncatingBits: UInt) {
        self.init(base: .init(_truncatingBits: _truncatingBits))
    }
    
    init?<T: BinaryInteger>(exactly source: T) {
        guard let rawValue = Base(exactly: source) else { return nil }
        self.init(base: rawValue)
    }
    
    static var bitWidth: Int {
        return Base.bitWidth
    }
    
    static var max: Self {
        return .init(base: .max)
    }
    
    static var min: Self {
        return .init(base: .min)
    }
    
    func addingReportingOverflow(_ rhs: Self) -> (partialValue: Self, overflow: Bool) {
        let (partialValue, overflow) = base.addingReportingOverflow(rhs.base)
        return (.init(base: partialValue), overflow)
    }
    
    func subtractingReportingOverflow(_ rhs: Self) -> (partialValue: Self, overflow: Bool) {
        let (partialValue, overflow) = base.subtractingReportingOverflow(rhs.base)
        return (.init(base: partialValue), overflow)
    }
    
    func multipliedReportingOverflow(by rhs: Self) -> (partialValue: Self, overflow: Bool) {
        let (partialValue, overflow) = base.multipliedReportingOverflow(by: rhs.base)
        return (.init(base: partialValue), overflow)
    }
    
    func dividedReportingOverflow(by rhs: Self) -> (partialValue: Self, overflow: Bool) {
        let (partialValue, overflow) = base.dividedReportingOverflow(by: rhs.base)
        return (.init(base: partialValue), overflow)
    }
    
    func remainderReportingOverflow(dividingBy rhs: Self) -> (partialValue: Self, overflow: Bool) {
        let (partialValue, overflow) = base.remainderReportingOverflow(dividingBy: rhs.base)
        return (.init(base: partialValue), overflow)
    }
    
    func multipliedFullWidth(by other: Self) -> (high: Self, low: Base.Magnitude) {
        let (high, low) = base.multipliedFullWidth(by: other.base)
        return (.init(base: high), low)
    }
    
    func dividingFullWidth(_ dividend: (high: Self, low: Base.Magnitude)) -> (quotient: Self, remainder: Self) {
        let (quotient, remainder) = base.dividingFullWidth((dividend.high.base, dividend.low))
        return (.init(base: quotient), .init(base: remainder))
    }
    
    var nonzeroBitCount: Int {
        return base.nonzeroBitCount
    }
    
    var leadingZeroBitCount: Int {
        return base.leadingZeroBitCount
    }
    
    var byteSwapped: Self {
        return .init(base: base.byteSwapped)
    }
}

public extension Newtype where Self: FloatingPoint, Base: FloatingPoint {
    mutating func round(_ rule: FloatingPointRoundingRule) {
        withRawValue { $0.round(rule) }
    }
    
    var magnitude: Self {
        return .init(base: base.magnitude)
    }
    
    static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.base < rhs.base
    }
    
    init<Source: BinaryInteger>(_ value: Source) {
        self.init(base: .init(value))
    }
    
    init(sign: FloatingPointSign, exponent: Base.Exponent, significand: Self) {
        self.init(base: .init(sign: sign, exponent: exponent, significand: significand.base))
    }
    
    init(signOf: Self, magnitudeOf: Self) {
        self.init(base: .init(signOf: signOf.base, magnitudeOf: magnitudeOf.base))
    }
    
    init(_ value: UInt8) {
        self.init(base: .init(value))
    }
    
    init(_ value: Int8) {
        self.init(base: .init(value))
    }
    
    init(_ value: UInt16) {
        self.init(base: .init(value))
    }
    
    init(_ value: Int16) {
        self.init(base: .init(value))
    }
    
    init(_ value: UInt32) {
        self.init(base: .init(value))
    }
    
    init(_ value: Int32) {
        self.init(base: .init(value))
    }
    
    init(_ value: UInt64) {
        self.init(base: .init(value))
    }
    
    init(_ value: Int64) {
        self.init(base: .init(value))
    }
    
    init(_ value: UInt) {
        self.init(base: .init(value))
    }
    
    init(_ value: Int) {
        self.init(base: .init(value))
    }
    
    static var radix: Int {
        return Base.radix
    }
    
    static var nan: Self {
        return .init(base: .nan)
    }
    
    static var signalingNaN: Self {
        return .init(base: .signalingNaN)
    }
    
    static var infinity: Self {
        return .init(base: .infinity)
    }
    
    static var greatestFiniteMagnitude: Self {
        return .init(base: .greatestFiniteMagnitude)
    }
    
    static var pi: Self {
        return .init(base: .pi)
    }
    
    var ulp: Self {
        return .init(base: base.ulp)
    }
    
    static var leastNormalMagnitude: Self {
        return .init(base: .leastNormalMagnitude)
    }
    
    static var leastNonzeroMagnitude: Self {
        return .init(base: .leastNonzeroMagnitude)
    }
    
    var sign: FloatingPointSign {
        return base.sign
    }
    
    var exponent: Base.Exponent {
        return base.exponent
    }
    
    var significand: Self {
        return .init(base: base.significand)
    }
    
    static func / (lhs: Self, rhs: Self) -> Self {
        return .init(base: lhs.base / rhs.base)
    }
    
    static func /= (lhs: inout Self, rhs: Self) {
        lhs = lhs / rhs
    }
    
    mutating func formRemainder(dividingBy other: Self) {
        withRawValue { $0.formRemainder(dividingBy: other.base) }
    }
    
    mutating func formTruncatingRemainder(dividingBy other: Self) {
        withRawValue { $0.formTruncatingRemainder(dividingBy: other.base) }
    }
    
    mutating func formSquareRoot() {
        withRawValue { $0.formSquareRoot() }
    }
    
    mutating func addProduct(_ lhs: Self, _ rhs: Self) {
        withRawValue { $0.addProduct(lhs.base, rhs.base) }
    }
    
    var nextUp: Self {
        return .init(base: base.nextUp)
    }
    
    func isEqual(to other: Self) -> Bool {
        return base.isEqual(to: other.base)
    }
    
    func isLess(than other: Self) -> Bool {
        return base.isLess(than: other.base)
    }
    
    func isLessThanOrEqualTo(_ other: Self) -> Bool {
        return base.isLessThanOrEqualTo(other.base)
    }
    
    func isTotallyOrdered(belowOrEqualTo other: Self) -> Bool {
        return base.isTotallyOrdered(belowOrEqualTo: other.base)
    }
    
    var isNormal: Bool {
        return base.isNormal
    }
    
    var isFinite: Bool {
        return base.isFinite
    }
    
    var isZero: Bool {
        return base.isZero
    }
    
    var isSubnormal: Bool {
        return base.isSubnormal
    }
    
    var isInfinite: Bool {
        return base.isInfinite
    }
    
    var isNaN: Bool {
        return base.isNaN
    }
    
    var isSignalingNaN: Bool {
        return base.isSignalingNaN
    }
    
    var isCanonical: Bool {
        return base.isCanonical
    }
}

public extension Newtype where Self: BinaryFloatingPoint, Base: BinaryFloatingPoint {    
    init?<T: BinaryInteger>(exactly source: T) {
        guard let rawValue = Base(exactly: source) else { return nil }
        self.init(base: rawValue)
    }
    
    init<Source: BinaryInteger>(_ value: Source) {
        self.init(base: .init(value))
    }
    
    init(_ value: Float) {
        self.init(base: .init(value))
    }
    
    init(_ value: Double) {
        self.init(base: .init(value))
    }
    
    init(_ value: Float80) {
        self.init(base: .init(value))
    }
    
    static var radix: Int {
        return Base.radix
    }
    
    func isTotallyOrdered(belowOrEqualTo other: Self) -> Bool {
        return base.isTotallyOrdered(belowOrEqualTo: other.base)
    }
    
    init(signOf: Self, magnitudeOf: Self) {
        self.init(base: .init(signOf: signOf.base, magnitudeOf: magnitudeOf.base))
    }
    
    init(sign: FloatingPointSign, exponentBitPattern: Base.RawExponent, significandBitPattern: Base.RawSignificand) {
        self.init(base: .init(sign: sign, exponentBitPattern: exponentBitPattern, significandBitPattern: significandBitPattern))
    }
    
    static var exponentBitCount: Int {
        return Base.exponentBitCount
    }
    
    static var significandBitCount: Int {
        return Base.significandBitCount
    }
    
    var exponentBitPattern: Base.RawExponent {
        return base.exponentBitPattern
    }
    
    var significandBitPattern: Base.RawSignificand {
        return base.significandBitPattern
    }
    
    var binade: Self {
        return .init(base: base.binade)
    }
    
    var significandWidth: Int {
        return base.significandWidth
    }
}
