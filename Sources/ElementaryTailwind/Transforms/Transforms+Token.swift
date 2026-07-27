import Elementary

/// Controls the CSS `scale` property.
public enum TWTScale: TWToken, Sendable, Equatable {
    case x(Int)
    case y(Int)
    case all(Int)
    case zero
    case custom(String)

    public var rawValue: String {
        switch self {
        case .x(let n): "scale-x-\(n)"
        case .y(let n): "scale-y-\(n)"
        case .all(let n): "scale-\(n)"
        case .zero: "scale-0"
        case .custom(let v): "scale-\(v)"
        }
    }
}

/// Controls the CSS `rotate` property.
public enum TWTRotate: TWToken, Sendable, Equatable {
    case x(Int)
    case y(Int)
    case z(Int)
    case all(Int)
    case zero
    case custom(String)

    public var rawValue: String {
        switch self {
        case .x(let n): "rotate-x-\(n)"
        case .y(let n): "rotate-y-\(n)"
        case .z(let n): "rotate-\(n)"
        case .all(let n): "rotate-\(n)"
        case .zero: "rotate-0"
        case .custom(let v): "rotate-\(v)"
        }
    }
}

/// Controls the CSS `translate` property.
public enum TWTTranslate: TWToken, Sendable, Equatable {
    case x(String)
    case y(String)
    case all(String)
    case px
    case zero
    case custom(String)

    public var rawValue: String {
        switch self {
        case .x(let v): "translate-x-\(v)"
        case .y(let v): "translate-y-\(v)"
        case .all(let v): "translate-\(v)"
        case .px: "translate-px"
        case .zero: "translate-0"
        case .custom(let v): "translate-\(v)"
        }
    }
}

/// Controls the CSS `skew` property.
public enum TWTSkew: TWToken, Sendable, Equatable {
    case x(Int)
    case y(Int)
    case all(Int)
    case zero
    case custom(String)

    public var rawValue: String {
        switch self {
        case .x(let n): "skew-x-\(n)"
        case .y(let n): "skew-y-\(n)"
        case .all(let n): "skew-\(n)"
        case .zero: "skew-0"
        case .custom(let v): "skew-\(v)"
        }
    }
}

/// Controls the CSS `transform` property.
public enum TWTTransform: String, TWToken, Sendable, Equatable, CaseIterable {
    case none = "transform-none"
    case gpu = "transform-gpu"
    case cpu = "transform-cpu"
}

/// Controls the CSS `transform-origin` property.
public enum TWTTransformOrigin: String, TWToken, Sendable, Equatable, CaseIterable {
    case center = "origin-center"
    case top = "origin-top"
    case topRight = "origin-top-right"
    case right = "origin-right"
    case bottomRight = "origin-bottom-right"
    case bottom = "origin-bottom"
    case bottomLeft = "origin-bottom-left"
    case left = "origin-left"
    case topLeft = "origin-top-left"
}
