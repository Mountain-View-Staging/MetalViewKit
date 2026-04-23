//
//  MetalViewKitTests.swift
//  MetalViewKit
//

import XCTest
@testable import MetalViewKit

final class MetalViewKitTests: XCTestCase {

    func testMetalViewInitializationWithDevice() {
        guard let device = MTLCreateSystemDefaultDevice() else {
            // Skip test if no Metal device available (CI environment)
            return
        }

        if #available(macOS 14.0, iOS 16.0, tvOS 26.0, *) {
            let view = MarqueeMetalView(device: device)
            XCTAssertNotNil(view.device)
            XCTAssertTrue(view.maintainAspectRatio)
            XCTAssertNil(view.displayTexture)
        }
    }

    func testMetalViewClearTexture() {
        guard let device = MTLCreateSystemDefaultDevice() else {
            return
        }

        if #available(macOS 14.0, iOS 16.0, tvOS 26.0, *) {
            let view = MarqueeMetalView(device: device)
            view.clearTexture()
            XCTAssertNil(view.displayTexture)
        }
    }

    func testMetalViewPauseResume() {
        guard let device = MTLCreateSystemDefaultDevice() else {
            return
        }

        if #available(macOS 14.0, iOS 16.0, tvOS 26.0, *) {
            let view = MarqueeMetalView(device: device)
            view.pauseRendering()
            XCTAssertTrue(view.isPaused)
            view.resumeRendering()
            XCTAssertFalse(view.isPaused)
        }
    }
}
