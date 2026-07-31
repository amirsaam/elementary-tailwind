import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct TransitionsTests {
    @Test func testTransitionProperty() throws {
        try HTMLAssertEqual(
            div(.transition(.all)) {},
            try String(contentsOf: fixtureURL("transitionProperty.all.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.transition(.colors)) {},
            try String(contentsOf: fixtureURL("transitionProperty.colors.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.transition(.none)) {},
            try String(contentsOf: fixtureURL("transitionProperty.none.html"), encoding: .utf8)
        )
    }

    @Test func testTransitionDuration() throws {
        try HTMLAssertEqual(
            div(.transitionDuration(.ms(150))) {},
            try String(contentsOf: fixtureURL("transitionDuration.ms-150.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.transitionDuration(.ms(300))) {},
            try String(contentsOf: fixtureURL("transitionDuration.ms-300.html"), encoding: .utf8)
        )
    }

    @Test func testTransitionTimingFunction() throws {
        try HTMLAssertEqual(
            div(.transitionTimingFunction(.linear)) {},
            try String(
                contentsOf: fixtureURL("transitionTimingFunction.linear.html"),
                encoding: .utf8
            )
        )
        try HTMLAssertEqual(
            div(.transitionTimingFunction(.easeInOut)) {},
            try String(
                contentsOf: fixtureURL("transitionTimingFunction.easeInOut.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testTransitionPropertyArbitrary() throws {
        try HTMLAssertEqual(
            div(.transition(.arbitrary("height"))) {},
            try String(
                contentsOf: fixtureURL("transitionProperty.arbitrary.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testTransitionDurationArbitrary() throws {
        try HTMLAssertEqual(
            div(.transitionDuration(.arbitrary("1s,15s"))) {},
            try String(
                contentsOf: fixtureURL("transitionDuration.arbitrary.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testTransitionTimingFunctionArbitrary() throws {
        try HTMLAssertEqual(
            div(.transitionTimingFunction(.arbitrary("cubic-bezier(0.95,0.05,0.795,0.035)"))) {},
            try String(
                contentsOf: fixtureURL("transitionTimingFunction.arbitrary.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testTransitionDelayArbitrary() throws {
        try HTMLAssertEqual(
            div(.transitionDelay(.arbitrary("1s,250ms"))) {},
            try String(
                contentsOf: fixtureURL("transitionDelay.arbitrary.html"),
                encoding: .utf8
            )
        )
    }
}
