//
//  MarqueeLog.swift
//  MetalViewKit
//
import OSLog
import LoggingKit

// MARK: - Module-level instance

let mlog = MarqueeLog(
    logger: Logger(subsystem: "com.mvsmarquee.MetalViewKit", category: "MetalViewKit"),
    projectTag: "MetalViewKit"
)
