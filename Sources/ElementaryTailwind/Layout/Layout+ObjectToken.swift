import Elementary

/// Controls the CSS `object-fit` property.
public enum TWTObjectFit: String, TWToken, Sendable, Equatable, CaseIterable {
    case contain = "object-contain"
    case cover = "object-cover"
    case fill = "object-fill"
    case none = "object-none"
    case scaleDown = "object-scale-down"
}

/// Controls the CSS `object-position` property.
public enum TWTObjectPosition: String, TWToken, Sendable, Equatable, CaseIterable {
    case center = "object-center"
    case top = "object-top"
    case topRight = "object-top-right"
    case right = "object-right"
    case bottomRight = "object-bottom-right"
    case bottom = "object-bottom"
    case bottomLeft = "object-bottom-left"
    case left = "object-left"
    case topLeft = "object-top-left"
}
