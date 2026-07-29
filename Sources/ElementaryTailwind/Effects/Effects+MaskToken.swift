import Elementary

/// Controls the CSS `text-shadow` property.
public enum TWTTextShadow: String, TWToken, Sendable, Equatable, CaseIterable {
    case xxs = "text-shadow-2xs"
    case xs = "text-shadow-xs"
    case sm = "text-shadow-sm"
    case md = "text-shadow-md"
    case lg = "text-shadow-lg"
    case none = "text-shadow-none"
}

/// Controls the CSS `mask-clip` property.
public enum TWTMaskClip: String, TWToken, Sendable, Equatable, CaseIterable {
    case padding = "mask-clip-padding"
    case content = "mask-clip-content"
    case border = "mask-clip-border"
    case text = "mask-clip-text"
}

/// Controls the CSS `mask-composite` property.
public enum TWTMaskComposite: String, TWToken, Sendable, Equatable, CaseIterable {
    case add = "mask-composite-add"
    case subtract = "mask-composite-subtract"
    case intersect = "mask-composite-intersect"
    case exclude = "mask-composite-exclude"
}

/// Controls the CSS `mask-image` property.
public enum TWTMaskImage: String, TWToken, Sendable, Equatable, CaseIterable {
    case none = "mask-none"
}

/// Controls the CSS `mask-mode` property.
public enum TWTMaskMode: String, TWToken, Sendable, Equatable, CaseIterable {
    case alpha = "mask-alpha"
    case luminance = "mask-luminance"
    case match = "mask-match"
}

/// Controls the CSS `mask-origin` property.
public enum TWTMaskOrigin: String, TWToken, Sendable, Equatable, CaseIterable {
    case padding = "mask-origin-padding"
    case content = "mask-origin-content"
    case border = "mask-origin-border"
}

/// Controls the CSS `mask-position` property.
public enum TWTMaskPosition: String, TWToken, Sendable, Equatable, CaseIterable {
    case center = "mask-center"
    case top = "mask-top"
    case topRight = "mask-top-right"
    case right = "mask-right"
    case bottomRight = "mask-bottom-right"
    case bottom = "mask-bottom"
    case bottomLeft = "mask-bottom-left"
    case left = "mask-left"
    case topLeft = "mask-top-left"
}

/// Controls the CSS `mask-repeat` property.
public enum TWTMaskRepeat: String, TWToken, Sendable, Equatable, CaseIterable {
    case `repeat` = "mask-repeat"
    case noRepeat = "mask-no-repeat"
    case repeatX = "mask-repeat-x"
    case repeatY = "mask-repeat-y"
    case round = "mask-repeat-round"
    case space = "mask-repeat-space"
}

/// Controls the CSS `mask-size` property.
public enum TWTMaskSize: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "mask-size-auto"
    case cover = "mask-size-cover"
    case contain = "mask-size-contain"
}

/// Controls the CSS `mask-type` property.
public enum TWTMaskType: String, TWToken, Sendable, Equatable, CaseIterable {
    case alpha = "mask-type-alpha"
    case luminance = "mask-type-luminance"
}
