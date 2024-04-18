//
//  DisableableView.swift
//  PickerTest
//
//  Created by Eric Kampman on 4/18/24.
//

import SwiftUI

struct DisableableView<Content:View>: View {
	@Binding var disabled: Bool
	let content: Content
	let disabledText: String
	
	init(disabled: Binding<Bool>, disabledText: any StringProtocol, @ViewBuilder content: () -> Content) {
		self._disabled = disabled
		self.content = content()
		self.disabledText = disabledText as! String
	}
	
    var body: some View {
		if disabled {
			Text(disabledText)
				.italic()
		} else {
			content
		}
    }
}

#Preview {
	@State var disabled = false
	return DisableableView(disabled: $disabled, disabledText: "Need Title to set type")
		{ Text("View") }
}
