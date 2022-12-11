//
//  HomeViewCell.swift
//  GenericNetworkLayerExample
//
//  Created by İhsan Akbay on 11.12.2022.
//

import SwiftUI

struct HomeViewCell: View {
	var character: Character

	var body: some View {
		ZStack {
			RoundedRectangle(cornerRadius: 25)
				.fill(.cyan)
				.opacity(0.9)
				.frame(height: 120)

			HStack {
				AsyncImage(url: URL(string: character.image)) { image in
					image
						.resizable()
						.scaledToFill()
						.aspectRatio(contentMode: .fill)
						.frame(width: SCREEN_SIZE.width / 3, height: 120)
						.clipped()
						.cornerRadius(25)
				} placeholder: {
					ProgressView()
						.frame(width: SCREEN_SIZE.width / 3, height: 120)
				}

				VStack(alignment: .leading, spacing: 8) {
					Text(character.name)
						.font(.system(size: 16, weight: .semibold))
					HStack(spacing: 8) {
						Text("Status:")
						Text(character.status)
							.bold()
					}
					HStack(spacing: 8) {
						Text("Gender:")
						Text(character.gender)
							.bold()
					}
					HStack(spacing: 8) {
						Text("Species:")
						Text(character.species)
							.bold()
					}
				}
				.font(.system(size: 14))
				.padding()
				.frame(
					minWidth: 0,
					maxWidth: .infinity,
					minHeight: 0,
					maxHeight: .infinity,
					alignment: .leading
				)
				Spacer()
			}
			.frame(height: 120)
		}
		.padding(.horizontal)
		.padding(.vertical, 8)
	}
}

struct HomeViewCell_Previews: PreviewProvider {
	static var previews: some View {
		HomeViewCell(character: Character(id: 1, name: "Rick Sanchez", status: "Alive", species: "Human", gender: "Male", image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg"))
	}
}
