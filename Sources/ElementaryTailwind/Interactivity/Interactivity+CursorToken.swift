import Elementary

/// Controls the CSS `cursor` property.
/// Supports arbitrary cursor values, e.g. `.arbitrary("url(pointer.png),pointer")`
/// produces `cursor-[url(pointer.png),pointer]`.
public enum TWTCursor: TWToken, Sendable, Equatable {
    case auto
    case `default`
    case pointer
    case wait
    case text
    case move
    case help
    case notAllowed
    case none
    case contextMenu
    case progress
    case cell
    case crosshair
    case verticalText
    case alias
    case copy
    case noDrop
    case grab
    case grabbing
    case colResize
    case rowResize
    case nResize
    case eResize
    case sResize
    case wResize
    case neResize
    case nwResize
    case seResize
    case swResize
    case ewResize
    case nsResize
    case neswResize
    case nwseResize
    case zoomIn
    case zoomOut
    case allScroll
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .auto: "cursor-auto"
        case .default: "cursor-default"
        case .pointer: "cursor-pointer"
        case .wait: "cursor-wait"
        case .text: "cursor-text"
        case .move: "cursor-move"
        case .help: "cursor-help"
        case .notAllowed: "cursor-not-allowed"
        case .none: "cursor-none"
        case .contextMenu: "cursor-context-menu"
        case .progress: "cursor-progress"
        case .cell: "cursor-cell"
        case .crosshair: "cursor-crosshair"
        case .verticalText: "cursor-vertical-text"
        case .alias: "cursor-alias"
        case .copy: "cursor-copy"
        case .noDrop: "cursor-no-drop"
        case .grab: "cursor-grab"
        case .grabbing: "cursor-grabbing"
        case .colResize: "cursor-col-resize"
        case .rowResize: "cursor-row-resize"
        case .nResize: "cursor-n-resize"
        case .eResize: "cursor-e-resize"
        case .sResize: "cursor-s-resize"
        case .wResize: "cursor-w-resize"
        case .neResize: "cursor-ne-resize"
        case .nwResize: "cursor-nw-resize"
        case .seResize: "cursor-se-resize"
        case .swResize: "cursor-sw-resize"
        case .ewResize: "cursor-ew-resize"
        case .nsResize: "cursor-ns-resize"
        case .neswResize: "cursor-nesw-resize"
        case .nwseResize: "cursor-nwse-resize"
        case .zoomIn: "cursor-zoom-in"
        case .zoomOut: "cursor-zoom-out"
        case .allScroll: "cursor-all-scroll"
        case .arbitrary(let v): "cursor-[\(v)]"
        }
    }
}
