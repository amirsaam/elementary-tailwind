import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct AccessibilityTests {
    @Test func testScreenReader() throws {
        try HTMLAssertEqual(
            div(.screenReader(.only)) {},
            try String(contentsOf: fixtureURL("screenReader.only.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.screenReader(.notOnly)) {},
            try String(contentsOf: fixtureURL("screenReader.notOnly.html"), encoding: .utf8)
        )
    }

    @Test func testForcedColorAdjust() throws {
        try HTMLAssertEqual(
            div(.forcedColorAdjust(.auto)) {},
            try String(contentsOf: fixtureURL("forcedColorAdjust.auto.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.forcedColorAdjust(.none)) {},
            try String(contentsOf: fixtureURL("forcedColorAdjust.none.html"), encoding: .utf8)
        )
    }
}
