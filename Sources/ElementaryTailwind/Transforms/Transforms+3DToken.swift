import Elementary

/// Controls the CSS `perspective` property.
public enum TWTPerspective: TWToken, Sendable, Equatable {
    case value(Int)
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .value(let n): "perspective-\(n)"
        case .arbitrary(let v): "perspective-[\(v)]"
        }
    }
}

/// Controls the CSS `perspective-origin` property.
/// Accepts a custom value via `.arbitrary(...)` (e.g. `perspective-origin-[200%_150%]`).
public enum TWTPerspectiveOrigin: TWToken, Sendable, Equatable {
    case center
    case left
    case right
    case top
    case topRight
    case topLeft
    case bottom
    case bottomRight
    case bottomLeft
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .center: "perspective-origin-center"
        case .left: "perspective-origin-left"
        case .right: "perspective-origin-right"
        case .top: "perspective-origin-top"
        case .topRight: "perspective-origin-top-right"
        case .topLeft: "perspective-origin-top-left"
        case .bottom: "perspective-origin-bottom"
        case .bottomRight: "perspective-origin-bottom-right"
        case .bottomLeft: "perspective-origin-bottom-left"
        case .arbitrary(let v): "perspective-origin-[\(v)]"
        }
    }
}

/// Controls the CSS `backface-visibility` property.
public enum TWTBackfaceVisibility: String, TWToken, Sendable, Equatable, CaseIterable {
    case visible = "backface-visible"
    case hidden = "backface-hidden"
}

/// Controls the CSS `transform-style` property.
public enum TWTTransformStyle: String, TWToken, Sendable, Equatable, CaseIterable {
    case flat = "transform-style-flat"
    case preserve3d = "transform-style-3d"
}

/// Controls the CSS `zoom` property.
public enum TWTZoom: TWToken, Sendable, Equatable {
    case value(Int)
    case zero
    case fifty
    case seventyFive
    case normal
    case oneFifty
    case twoHundred
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .value(let n): "zoom-\(n)"
        case .zero: "zoom-0"
        case .fifty: "zoom-50"
        case .seventyFive: "zoom-75"
        case .normal: "zoom-100"
        case .oneFifty: "zoom-150"
        case .twoHundred: "zoom-200"
        case .arbitrary(let v): "zoom-[\(v)]"
        }
    }
}
