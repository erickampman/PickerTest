//
//  ContentView.swift
//  PickerTest
//
//  Created by Eric Kampman on 4/18/24.
//

import SwiftUI

struct ContentView: View {
	@Binding var data: Data
	@State private var isDisabled = true
		
    var body: some View {
		Form {
			Section(header: Text("Data").font(.title)) {
				TextField("Title", text: $data.title)
					.task(id: data.title) {
						isDisabled = data.title.isEmpty
					}
				
				DisableableView(disabled: $isDisabled, disabledText: "Title must not be empty to set Type") {
					Picker("Type", selection: $data.type) {
						ForEach(DataType.allCases) { type in
							Text(type.stringValue)
						}
					}
				}
			}
		}
        .padding()
    }
}

#Preview {
	@State var data = Data()
	return ContentView(data: $data)
}
