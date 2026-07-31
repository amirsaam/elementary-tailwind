import Elementary

/// Controls the CSS `border-color` property.
public struct TWTBorderColor: TWToken, Sendable, Equatable {
    public let rawValue: String
    public init(_ color: TWColor, opacity: Int? = nil) {
        if let opacity {
            rawValue = "border-\(color.rawValue)/\(opacity)"
        } else {
            rawValue = "border-\(color.rawValue)"
        }
    }
}

/// Controls the CSS `border-radius` property.
/// Accepts a custom value via `.arbitrary(...)` (e.g. `rounded-[10px]`).
public enum TWTBorderRadius: TWToken, Sendable, Equatable {
    case none
    case xs
    case sm
    case md
    case lg
    case xl
    case xxl
    case xxxl
    case fourxl
    case full
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .none: "rounded-none"
        case .xs: "rounded-xs"
        case .sm: "rounded-sm"
        case .md: "rounded-md"
        case .lg: "rounded-lg"
        case .xl: "rounded-xl"
        case .xxl: "rounded-2xl"
        case .xxxl: "rounded-3xl"
        case .fourxl: "rounded-4xl"
        case .full: "rounded-full"
        case .arbitrary(let v): "rounded-[\(v)]"
        }
    }
}

/// Controls the CSS `border-style` property.
public enum TWTBorderStyle: String, TWToken, Sendable, Equatable, CaseIterable {
    case solid = "border-solid"
    case dashed = "border-dashed"
    case dotted = "border-dotted"
    case double = "border-double"
    case hidden = "border-hidden"
    case none = "border-none"
}

/// Controls the CSS `border-width` property.
public enum TWTBorderWidth: TWToken, Sendable, Equatable {
    case bare
    case size(Int)
    case x(Int)
    case y(Int)
    case t(Int)
    case r(Int)
    case b(Int)
    case l(Int)
    case s(Int)
    case e(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .bare: "border"
        case .size(let n): "border-\(n)"
        case .x(let n): "border-x-\(n)"
        case .y(let n): "border-y-\(n)"
        case .t(let n): "border-t-\(n)"
        case .r(let n): "border-r-\(n)"
        case .b(let n): "border-b-\(n)"
        case .l(let n): "border-l-\(n)"
        case .s(let n): "border-s-\(n)"
        case .e(let n): "border-e-\(n)"
        case .arbitrary(let v): "border-[\(v)]"
        }
    }
}

/// Controls the CSS `border-radius` property on specific corners or sides.
public enum TWTBorderRadiusDirectional: TWToken, Sendable, Equatable {
    case top(TWTBorderRadius)
    case right(TWTBorderRadius)
    case bottom(TWTBorderRadius)
    case left(TWTBorderRadius)
    case topLeft(TWTBorderRadius)
    case topRight(TWTBorderRadius)
    case bottomLeft(TWTBorderRadius)
    case bottomRight(TWTBorderRadius)
    case startStart(TWTBorderRadius)
    case startEnd(TWTBorderRadius)
    case endStart(TWTBorderRadius)
    case endEnd(TWTBorderRadius)

    public var rawValue: String {
        switch self {
        case .top(let r): "rounded-t\(Self.suffix(r))"
        case .right(let r): "rounded-r\(Self.suffix(r))"
        case .bottom(let r): "rounded-b\(Self.suffix(r))"
        case .left(let r): "rounded-l\(Self.suffix(r))"
        case .topLeft(let r): "rounded-tl\(Self.suffix(r))"
        case .topRight(let r): "rounded-tr\(Self.suffix(r))"
        case .bottomLeft(let r): "rounded-bl\(Self.suffix(r))"
        case .bottomRight(let r): "rounded-br\(Self.suffix(r))"
        case .startStart(let r): "rounded-ss\(Self.suffix(r))"
        case .startEnd(let r): "rounded-se\(Self.suffix(r))"
        case .endStart(let r): "rounded-es\(Self.suffix(r))"
        case .endEnd(let r): "rounded-ee\(Self.suffix(r))"
        }
    }

    private static func suffix(_ radius: TWTBorderRadius) -> String {
        let raw = radius.rawValue
        guard raw.hasPrefix("rounded") else { return "" }
        return String(raw.dropFirst("rounded".count))
    }
}
