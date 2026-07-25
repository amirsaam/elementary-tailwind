import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct TWTokenTests {
    @Test func testClassOverloadWithSingleToken() throws {
        try HTMLAssertEqual(
            p(.class(TWTDisplay.flex)) {},
            try String(contentsOf: fixtureURL("display.flex.on-p.html"), encoding: .utf8)
        )
    }

    @Test func testClassOverloadWithMultipleTokens() throws {
        try HTMLAssertEqual(
            p(.class(TWTDisplay.flex, TWTItems.center, TWTGap.size(4))) {},
            try String(
                contentsOf: fixtureURL("display.flex.items-center.gap-4-on-p.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testClassOverloadWithRawStringClasses() throws {
        try HTMLAssertEqual(
            p(.class("custom"), .class(TWTDisplay.flex)) {},
            try String(
                contentsOf: fixtureURL("custom-plus-display-flex-on-p.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testClassOverloadOnVoidElement() throws {
        try HTMLAssertEqual(
            hr(.class(TWTDisplay.hidden)),
            try String(contentsOf: fixtureURL("display.hidden-on-hr.html"), encoding: .utf8)
        )
    }

    @Test func testClassOverloadOnDiv() throws {
        try HTMLAssertEqual(
            div(.class(TWTDisplay.flex, TWTItems.center, TWTGap.size(4))) {
                p { "Hello" }
            },
            try String(
                contentsOf: fixtureURL("display.flex.items-center.gap-4-on-div.html"),
                encoding: .utf8
            )
        )
    }
}
