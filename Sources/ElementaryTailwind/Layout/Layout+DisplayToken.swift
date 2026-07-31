import Elementary

/// Controls the CSS `display` property.
/// Accepts a custom value via `.arbitrary(...)` (e.g. `display-[grid]`).
public enum TWTDisplay: TWToken, Sendable, Equatable {
    case block
    case inlineBlock
    case inline
    case flex
    case inlineFlex
    case grid
    case inlineGrid
    case table
    case tableCell
    case tableRow
    case flowRoot
    case contents
    case listItem
    case hidden
    case arbitrary(String)

    public var rawValue: String {
        switch self {
        case .block: "block"
        case .inlineBlock: "inline-block"
        case .inline: "inline"
        case .flex: "flex"
        case .inlineFlex: "inline-flex"
        case .grid: "grid"
        case .inlineGrid: "inline-grid"
        case .table: "table"
        case .tableCell: "table-cell"
        case .tableRow: "table-row"
        case .flowRoot: "flow-root"
        case .contents: "contents"
        case .listItem: "list-item"
        case .hidden: "hidden"
        case .arbitrary(let v): "display-[\(v)]"
        }
    }
}
