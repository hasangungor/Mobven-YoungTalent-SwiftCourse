//
//  APIService.swift
//  MobvenDemoApp
//
//  Created by mobven-macbook on 6.07.2022.
//

import Foundation

// MARK: - Environment -
enum EnvironmentAPI: String {
    case development = "dev.example.com"
    case prod = "example.com"
}

// MARK: - EndPoints -
enum EndPoints: String {
    case getAllUsers = "/api/allUsers"
}

// MARK: - API Error -
enum ApiError: Error {
    case forbidden              //Status code 403
    case notFound               //Status code 404
    case conflict               //Status code 409
    case internalServerError    //Status code 500
}
