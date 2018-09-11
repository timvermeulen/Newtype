public extension Newtype where Self: IteratorProtocol, Base: IteratorProtocol {
    mutating func next() -> Base.Element? {
        return withRawValue { $0.next() }
    }
}

public extension Newtype where Self: Sequence, Base: Sequence {
    func makeIterator() -> Base.Iterator {
        return base.makeIterator()
    }
}

public extension Newtype where Self: Collection, Base: Collection {
    typealias Index = Base.Index
    
    var startIndex: Base.Index {
        return base.startIndex
    }
    
    var endIndex: Base.Index {
        return base.endIndex
    }
    
    subscript(index: Base.Index) -> Base.Element {
        return base[index]
    }
    
    func index(after index: Base.Index) -> Base.Index {
        return base.index(after: index)
    }
}

// TODO: MutableCollection, BidirectionalCollection, RandomAccessCollection
