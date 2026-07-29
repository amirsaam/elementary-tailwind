import Elementary

/// Controls the CSS `touch-action` property.
public enum TWTTouchAction: String, TWToken, Sendable, Equatable, CaseIterable {
    case auto = "touch-auto"
    case none = "touch-none"
    case panX = "touch-pan-x"
    case panLeft = "touch-pan-left"
    case panRight = "touch-pan-right"
    case panY = "touch-pan-y"
    case panUp = "touch-pan-up"
    case panDown = "touch-pan-down"
    case pinchZoom = "touch-pinch-zoom"
    case manipulation = "touch-manipulation"
}
