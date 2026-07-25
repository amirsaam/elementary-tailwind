import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct TablesTests {
    @Test func testBorderCollapse() throws {
        try HTMLAssertEqual(
            div(.borderCollapse(.collapse)) {},
            try String(contentsOf: fixtureURL("borderCollapse.collapse.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.borderCollapse(.separate)) {},
            try String(contentsOf: fixtureURL("borderCollapse.separate.html"), encoding: .utf8)
        )
    }

    @Test func testBorderSpacing() throws {
        try HTMLAssertEqual(
            div(.borderSpacing(.size(4))) {},
            try String(contentsOf: fixtureURL("borderSpacing.size-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.borderSpacing(.zero)) {},
            try String(contentsOf: fixtureURL("borderSpacing.zero.html"), encoding: .utf8)
        )
    }

    @Test func testTableLayout() throws {
        try HTMLAssertEqual(
            div(.tableLayout(.auto)) {},
            try String(contentsOf: fixtureURL("tableLayout.auto.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.tableLayout(.fixed)) {},
            try String(contentsOf: fixtureURL("tableLayout.fixed.html"), encoding: .utf8)
        )
    }

    @Test func testCaptionSide() throws {
        try HTMLAssertEqual(
            div(.captionSide(.top)) {},
            try String(contentsOf: fixtureURL("captionSide.top.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.captionSide(.bottom)) {},
            try String(contentsOf: fixtureURL("captionSide.bottom.html"), encoding: .utf8)
        )
    }
}
