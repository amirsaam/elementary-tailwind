import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct EffectsTests {
    @Test func testBoxShadow() throws {
        try HTMLAssertEqual(
            div(.boxShadow(.xs)) {},
            try String(contentsOf: fixtureURL("boxShadow.xs.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.boxShadow(.sm)) {},
            try String(contentsOf: fixtureURL("boxShadow.sm.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.boxShadow(.lg)) {},
            try String(contentsOf: fixtureURL("boxShadow.lg.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.boxShadow(.none)) {},
            try String(contentsOf: fixtureURL("boxShadow.none.html"), encoding: .utf8)
        )
    }

    @Test func testOpacity() throws {
        try HTMLAssertEqual(
            div(.opacity(.value(50))) {},
            try String(contentsOf: fixtureURL("opacity.value-50.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.opacity(.value(100))) {},
            try String(contentsOf: fixtureURL("opacity.value-100.html"), encoding: .utf8)
        )
    }

    @Test func testMixBlendMode() throws {
        try HTMLAssertEqual(
            div(.mixBlendMode(.normal)) {},
            try String(contentsOf: fixtureURL("mixBlendMode.normal.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.mixBlendMode(.multiply)) {},
            try String(contentsOf: fixtureURL("mixBlendMode.multiply.html"), encoding: .utf8)
        )
    }

    @Test func testBoxShadowArbitrary() throws {
        try HTMLAssertEqual(
            div(.boxShadow(.arbitrary("0_35px_35px_rgba(0,0,0,0.25)"))) {},
            try String(contentsOf: fixtureURL("boxShadow.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testOpacityArbitrary() throws {
        try HTMLAssertEqual(
            div(.opacity(.arbitrary(".67"))) {},
            try String(contentsOf: fixtureURL("opacity.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testMaskImageArbitrary() throws {
        try HTMLAssertEqual(
            div(.maskImage(.arbitrary("70deg,transparent_10%,black,transparent_80%"))) {},
            try String(contentsOf: fixtureURL("maskImage.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testMaskSizeArbitrary() throws {
        try HTMLAssertEqual(
            div(.maskSize(.arbitrary("auto_100px"))) {},
            try String(contentsOf: fixtureURL("maskSize.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testMaskPositionArbitrary() throws {
        try HTMLAssertEqual(
            div(.maskPosition(.arbitrary("center_top_1rem"))) {},
            try String(contentsOf: fixtureURL("maskPosition.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testTextShadowArbitrary() throws {
        try HTMLAssertEqual(
            div(.textShadow(.arbitrary("0_35px_35px_rgb(0_0_0_/_0.25)"))) {},
            try String(contentsOf: fixtureURL("textShadow.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testInsetShadow() throws {
        try HTMLAssertEqual(
            div(.insetShadow(.sm)) {},
            try String(contentsOf: fixtureURL("insetShadow.sm.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.insetShadow(.none)) {},
            try String(contentsOf: fixtureURL("insetShadow.none.html"), encoding: .utf8)
        )
    }

    @Test func testInsetShadowArbitrary() throws {
        try HTMLAssertEqual(
            div(.insetShadow(.arbitrary("0_0_5px_rgb(0_0_0_/_0.5)"))) {},
            try String(contentsOf: fixtureURL("insetShadow.arbitrary.html"), encoding: .utf8)
        )
    }
}
