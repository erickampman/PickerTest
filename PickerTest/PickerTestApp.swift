//
//  PickerTestApp.swift
//  PickerTest
//
//  Created by Eric Kampman on 4/18/24.
//

import SwiftUI

@main
struct PickerTestApp: App {
	@State private var data = Data(title: "Foobar")

    var body: some Scene {
        WindowGroup {
			ContentView(data: $data)
        }
    }
}
