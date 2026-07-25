import Elementary

/// Controls the CSS `perspective` property.
public enum TWTPerspective: TWToken, Sendable, Equatable {
    case value(Int)

    public var rawValue: String {
        switch self {
        case .value(let n): "perspective-\(n)"
        }
    }
}

/// Controls the CSS `perspective-origin` property.
public enum TWTPerspectiveOrigin: String, TWToken, Sendable, Equatable, CaseIterable {
    case center = "perspective-center"
    case left = "perspective-left"
    case right = "perspective-right"
    case top = "perspective-top"
    case topRight = "perspective-top-right"
    case topLeft = "perspective-top-left"
    case bottom = "perspective-bottom"
    case bottomRight = "perspective-bottom-right"
    case bottomLeft = "perspective-bottom-left"
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
public enum TWTZoom: String, TWToken, Sendable, Equatable, CaseIterable {
    case zero = "zoom-0"
    case fifty = "zoom-50"
    case seventyFive = "zoom-75"
    case normal = "zoom-100"
    case oneFifty = "zoom-150"
    case twoHundred = "zoom-200"
}
