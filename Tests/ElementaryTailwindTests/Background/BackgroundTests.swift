import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct BackgroundTests {
    @Test func testBackgroundColor() throws {
        try HTMLAssertEqual(
            div(.backgroundColor(.blue)) {},
            try String(contentsOf: fixtureURL("backgroundColor.blue.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.backgroundColor(.red.shade(500))) {},
            try String(
                contentsOf: fixtureURL("backgroundColor.red-shade-500.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testBackgroundAttachment() throws {
        try HTMLAssertEqual(
            div(.backgroundAttachment(.fixed)) {},
            try String(contentsOf: fixtureURL("backgroundAttachment.fixed.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.backgroundAttachment(.scroll)) {},
            try String(contentsOf: fixtureURL("backgroundAttachment.scroll.html"), encoding: .utf8)
        )
    }

    @Test func testBackgroundClip() throws {
        try HTMLAssertEqual(
            div(.backgroundClip(.borderBox)) {},
            try String(contentsOf: fixtureURL("backgroundClip.borderBox.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.backgroundClip(.text)) {},
            try String(contentsOf: fixtureURL("backgroundClip.text.html"), encoding: .utf8)
        )
    }

    @Test func testBackgroundSize() throws {
        try HTMLAssertEqual(
            div(.backgroundSize(.cover)) {},
            try String(contentsOf: fixtureURL("backgroundSize.cover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.backgroundSize(.contain)) {},
            try String(contentsOf: fixtureURL("backgroundSize.contain.html"), encoding: .utf8)
        )
    }

    @Test func testBackgroundRepeat() throws {
        try HTMLAssertEqual(
            div(.backgroundRepeat(.`repeat`)) {},
            try String(contentsOf: fixtureURL("backgroundRepeat.repeat.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.backgroundRepeat(.noRepeat)) {},
            try String(contentsOf: fixtureURL("backgroundRepeat.noRepeat.html"), encoding: .utf8)
        )
    }

    @Test func testBackgroundImage() throws {
        try HTMLAssertEqual(
            div(.backgroundImage(.none)) {},
            try String(
                contentsOf: fixtureURL("backgroundImage.none.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testGradientToDirection() throws {
        try HTMLAssertEqual(
            div(.gradientToDirection(.r)) {},
            try String(contentsOf: fixtureURL("gradientTo.r.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gradientToDirection(.b)) {},
            try String(contentsOf: fixtureURL("gradientTo.b.html"), encoding: .utf8)
        )
    }

    @Test func testGradientToDirectionArbitrary() throws {
        try HTMLAssertEqual(
            div(.gradientToDirection(.arbitrary("65deg"))) {},
            try String(
                contentsOf: fixtureURL("gradientToDirection.arbitrary.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testGradientFromColor() throws {
        try HTMLAssertEqual(
            div(.gradientFromColor(.red.shade(500))) {},
            try String(
                contentsOf: fixtureURL("gradientFrom.red-shade-500.html"),
                encoding: .utf8
            )
        )
        try HTMLAssertEqual(
            div(.gradientFromColor(.blue, opacity: 50)) {},
            try String(
                contentsOf: fixtureURL("gradientFrom.blue.opacity-50.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testGradientViaColor() throws {
        try HTMLAssertEqual(
            div(.gradientViaColor(.green, opacity: 75)) {},
            try String(
                contentsOf: fixtureURL("gradientVia.green.opacity-75.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testBackgroundSizeArbitrary() throws {
        try HTMLAssertEqual(
            div(.backgroundSize(.arbitrary("auto_100px"))) {},
            try String(contentsOf: fixtureURL("backgroundSize.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testBackgroundImageArbitrary() throws {
        try HTMLAssertEqual(
            div(.backgroundImage(.arbitrary("url('/img/hero-pattern.svg')"))) {},
            try String(
                contentsOf: fixtureURL("backgroundImage.arbitrary.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testBackgroundPositionArbitrary() throws {
        try HTMLAssertEqual(
            div(.backgroundPosition(.arbitrary("center_top_1rem"))) {},
            try String(
                contentsOf: fixtureURL("backgroundPosition.arbitrary.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testGradientToColor() throws {
        try HTMLAssertEqual(
            div(.gradientToColor(.purple, opacity: 25)) {},
            try String(
                contentsOf: fixtureURL("gradientToColor.purple.opacity-25.html"),
                encoding: .utf8
            )
        )
    }
}
