public extension Newtype where Self: SetAlgebra, Base: SetAlgebra {
    typealias Element = Base.Element
    typealias ArrayLiteralElement = Base.ArrayLiteralElement
    
    init() {
        self.init(base: .init())
    }
    
    func contains(_ member: Base.Element) -> Bool {
        return base.contains(member)
    }
    
    func union(_ other: Self) -> Self {
        return .init(base: base.union(other.base))
    }
    
    func intersection(_ other: Self) -> Self {
        return .init(base: base.intersection(other.base))
    }
    
    func symmetricDifference(_ other: Self) -> Self {
        return .init(base: base.symmetricDifference(other.base))
    }
    
    mutating func insert(_ newMember: Base.Element) -> (inserted: Bool, memberAfterInsert: Base.Element) {
        return withRawValue { $0.insert(newMember) }
    }
    
    mutating func remove(_ member: Base.Element) -> Base.Element? {
        return withRawValue { $0.remove(member) }
    }
    
    mutating func update(with newMember: Base.Element) -> Base.Element? {
        return withRawValue { $0.update(with: newMember) }
    }
    
    mutating func formUnion(_ other: Self) {
        self = union(other)
    }
    
    mutating func formIntersection(_ other: Self) {
        self = intersection(other)
    }
    
    mutating func formSymmetricDifference(_ other: Self) {
        self = symmetricDifference(other)
    }
}
