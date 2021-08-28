//
//  ContentView.swift
//  TransparentChrome
//
//  Created by Steven Troughton-Smith on 28/08/2021.
//

import SwiftUI

struct ContentView: View {
	@State var value = 5.0
	var body: some View {
		GroupBox {
			VStack {
				Text("Hello, world!")
					.padding()
				
				Button("Test") {
					
				}
				
				Slider(value: $value, in: 0 ... 10, label: {
					Text("Test")
				})
			}
			.padding()
		}
		.padding()
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
