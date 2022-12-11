//
//  Character.swift
//  GenericNetworkLayerExample
//
//  Created by İhsan Akbay on 10.12.2022.
//

import Foundation

struct Characters: Codable {
	let results: [Character]
}

struct Character: Codable {
	let id: Int
	let name: String
	let status: String
	let species: String
	let gender: String
	let image: String
	
	enum CodingKeys: CodingKey {
		case id
		case name
		case status
		case species
		case gender
		case image
	}
}


