//
//  Client.swift
//  GenericNetworkLayerExample
//
//  Created by İhsan Akbay on 11.12.2022.
//

import Foundation

final class Client: GenericApi {

	let session: URLSession

	init(configuration: URLSessionConfiguration) {
		self.session = URLSession(configuration: configuration)
	}

	convenience init() {
		self.init(configuration: .default)
	}
}
