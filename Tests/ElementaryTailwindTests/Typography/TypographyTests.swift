import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct TypographyTests {
    @Test func testFontSize() throws {
        try HTMLAssertEqual(
            p(.fontSize(.lg)) {},
            try String(contentsOf: fixtureURL("fontSize.lg.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            p(.fontSize(.sm)) {},
            try String(contentsOf: fixtureURL("fontSize.sm.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            p(.fontSize(.base)) {},
            try String(contentsOf: fixtureURL("fontSize.base.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            p(.fontSize(.fourxl)) {},
            try String(contentsOf: fixtureURL("fontSize.4xl.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            p(.fontSize(.sixxl)) {},
            try String(contentsOf: fixtureURL("fontSize.6xl.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            p(.fontSize(.ninexl)) {},
            try String(contentsOf: fixtureURL("fontSize.9xl.html"), encoding: .utf8)
        )
    }

    @Test func testFontWeight() throws {
        try HTMLAssertEqual(
            p(.fontWeight(.bold)) {},
            try String(contentsOf: fixtureURL("fontWeight.bold.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            p(.fontWeight(.semibold)) {},
            try String(contentsOf: fixtureURL("fontWeight.semibold.html"), encoding: .utf8)
        )
    }

    @Test func testFontFamily() throws {
        try HTMLAssertEqual(
            p(.fontFamily(.sans)) {},
            try String(contentsOf: fixtureURL("fontFamily.sans.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            p(.fontFamily(.mono)) {},
            try String(contentsOf: fixtureURL("fontFamily.mono.html"), encoding: .utf8)
        )
    }

    @Test func testTextAlign() throws {
        try HTMLAssertEqual(
            p(.textAlign(.center)) {},
            try String(contentsOf: fixtureURL("textAlign.center.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            p(.textAlign(.left)) {},
            try String(contentsOf: fixtureURL("textAlign.left.html"), encoding: .utf8)
        )
    }

    @Test func testTextColor() throws {
        try HTMLAssertEqual(
            p(.textColor(.blue)) {},
            try String(contentsOf: fixtureURL("textColor.blue.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            p(.textColor(.red.shade(500))) {},
            try String(contentsOf: fixtureURL("textColor.red-shade-500.html"), encoding: .utf8)
        )
    }

    @Test func testTextDecoration() throws {
        try HTMLAssertEqual(
            p(.textDecoration(.underline)) {},
            try String(contentsOf: fixtureURL("textDecoration.underline.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            p(.textDecoration(.lineThrough)) {},
            try String(contentsOf: fixtureURL("textDecoration.lineThrough.html"), encoding: .utf8)
        )
    }

    @Test func testTextTransform() throws {
        try HTMLAssertEqual(
            p(.textTransform(.uppercase)) {},
            try String(contentsOf: fixtureURL("textTransform.uppercase.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            p(.textTransform(.lowercase)) {},
            try String(contentsOf: fixtureURL("textTransform.lowercase.html"), encoding: .utf8)
        )
    }

    @Test func testWhitespace() throws {
        try HTMLAssertEqual(
            p(.whitespace(.nowrap)) {},
            try String(contentsOf: fixtureURL("whitespace.nowrap.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            p(.whitespace(.pre)) {},
            try String(contentsOf: fixtureURL("whitespace.pre.html"), encoding: .utf8)
        )
    }

    @Test func testTruncate() throws {
        try HTMLAssertEqual(
            p(.textOverflow(.truncate)) {},
            try String(contentsOf: fixtureURL("textOverflow.truncate.html"), encoding: .utf8)
        )
    }
}
