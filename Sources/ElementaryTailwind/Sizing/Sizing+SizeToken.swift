import Elementary

/// Controls the CSS `width` and `height` properties together.
/// Accepts a custom value via `.arbitrary(...)`.
public enum TWTSize: TWToken, Sendable, Equatable {
    case size(Double)
    case fraction(String)
    case px
    case auto
    case full
    case dvw
    case dvh
    case lvw
    case lvh
    case svw
    case svh
    case min
    case max
    case fit
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .size(let n): "size-\(twFormat(n))"
        case .fraction(let f): "size-\(f)"
        case .px: "size-px"
        case .auto: "size-auto"
        case .full: "size-full"
        case .dvw: "size-dvw"
        case .dvh: "size-dvh"
        case .lvw: "size-lvw"
        case .lvh: "size-lvh"
        case .svw: "size-svw"
        case .svh: "size-svh"
        case .min: "size-min"
        case .max: "size-max"
        case .fit: "size-fit"
        case .arbitrary(let v): "size-[\(v)]"
        }
    }
}
