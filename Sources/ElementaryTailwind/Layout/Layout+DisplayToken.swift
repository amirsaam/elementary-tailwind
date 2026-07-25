import Elementary

/// Controls the CSS `display` property.
public enum TWTDisplay: String, TWToken, Sendable, Equatable, CaseIterable {
    case block = "block"
    case inlineBlock = "inline-block"
    case inline = "inline"
    case flex = "flex"
    case inlineFlex = "inline-flex"
    case grid = "grid"
    case inlineGrid = "inline-grid"
    case table = "table"
    case tableCell = "table-cell"
    case tableRow = "table-row"
    case flowRoot = "flow-root"
    case contents = "contents"
    case listItem = "list-item"
    case hidden = "hidden"
}
