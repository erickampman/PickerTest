//
//  Data.swift
//  PickerTest
//
//  Created by Eric Kampman on 4/18/24.
//

import Foundation
import SwiftUI

enum DataType: Identifiable, CaseIterable, Codable {
	case binary, text, other
	
	var id: Self { return self }
	
	var stringValue: String {
		switch self {
		case .binary: return "Binary"
		case .text: return "Text"
		case .other: return "Other"
		}
	}
}

@Observable
class Data {
	var title = ""
	var type = DataType.binary
	
	init(title: String = "", type: DataType = DataType.binary) {
		self.title = title
		self.type = type
	}
}
