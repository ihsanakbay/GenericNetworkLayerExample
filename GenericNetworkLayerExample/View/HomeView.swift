//
//  HomeView.swift
//  GenericNetworkLayerExample
//
//  Created by İhsan Akbay on 10.12.2022.
//

import SwiftUI

struct HomeView: View {
	@StateObject var viewModel = HomeViewModel()

	var body: some View {
		NavigationView {
			ScrollView(showsIndicators: false) {
				LazyVStack {
					ForEach(viewModel.characters, id: \.id) { character in
						HomeViewCell(character: character)
					}
				}
				.padding()
				.task {
					await viewModel.fetchCharacters()
				}
				.alert("", isPresented: $viewModel.hasError) {} message: {
					Text(viewModel.errorMessage)
				}
			}
			.navigationTitle("Rick & Morty API")
			.navigationBarTitleDisplayMode(.automatic)
		}
	}
}

struct HomeView_Previews: PreviewProvider {
	static var previews: some View {
		HomeView()
	}
}
