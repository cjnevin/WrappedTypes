import Foundation

public protocol WrappedType {
    associatedtype WrappedValue
    var wrappedValue: WrappedValue { get set }
}

public protocol SelfWrappedType: WrappedType {}

extension SelfWrappedType {
    public var wrappedValue: Self {
        get { self }
        set { self = newValue }
    }
}

extension Int: SelfWrappedType {}
extension Int8: SelfWrappedType {}
extension Int16: SelfWrappedType {}
extension Int32: SelfWrappedType {}
extension Int64: SelfWrappedType {}
extension UInt: SelfWrappedType {}
extension UInt8: SelfWrappedType {}
extension UInt16: SelfWrappedType {}
extension UInt32: SelfWrappedType {}
extension UInt64: SelfWrappedType {}
extension Float: SelfWrappedType {}
extension Double: SelfWrappedType {}
extension String: SelfWrappedType {}
extension Data: SelfWrappedType {}
extension Date: SelfWrappedType {}
extension Bool: SelfWrappedType {}
extension Character: SelfWrappedType {}
extension Array: SelfWrappedType {}
extension Dictionary: SelfWrappedType {}
extension Optional: SelfWrappedType {}
