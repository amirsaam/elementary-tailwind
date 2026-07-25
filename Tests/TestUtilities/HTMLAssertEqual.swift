import Elementary
import Foundation
import Testing

/// Asserts that the rendered HTML of `html` matches the `expected` string.
///
/// On failure, both the expected and actual rendered HTML are printed so
/// the diff is obvious.
///
/// Snapshot test pattern: read the expected string from a fixture file
/// using `fixtureURL(_:file:)` and pass it as `expected`:
///
/// ```swift
/// let expected = try String(contentsOf: fixtureURL("display-flex.html"), encoding: .utf8)
/// HTMLAssertEqual(div(.display(.flex)) {}, expected)
/// ```
public func HTMLAssertEqual(
    _ html: some HTML,
    _ expected: String,
    sourceLocation: SourceLocation = #_sourceLocation
) {
    let actual = html.render()
    #expect(actual == expected, sourceLocation: sourceLocation)
}

/// Resolves a snapshot fixture path relative to the calling test file.
///
/// Convention: fixtures live in `SnapshotFixtures/` alongside the test file's
/// containing directory. So a test at
/// `Tests/ElementaryTailwindTests/Layout/LayoutTests.swift` can
/// reference `SnapshotFixtures/display-flex.html` to resolve to
/// `Tests/ElementaryTailwindTests/Layout/SnapshotFixtures/display-flex.html`.
///
/// - Parameters:
///   - name: The fixture file name (e.g. `"display-flex.html"`).
///   - file: The calling test file (auto-populated).
/// - Returns: The file URL of the snapshot fixture.
public func fixtureURL(_ name: String, file: StaticString = #filePath) -> URL {
    URL(fileURLWithPath: String(describing: file))
        .deletingLastPathComponent()
        .appendingPathComponent("SnapshotFixtures")
        .appendingPathComponent(name)
}
