//: Playground - noun: a place where people can play

import Foundation

var url = "nabi://main?title=$value&a=$v1&b=$v2"

func parsingURL(url: String) -> (scheme: String, host: String, params: [String:String])? {

    guard let urlComponents = NSURLComponents(string: url) else { return nil }
    guard let queryItems = urlComponents.queryItems else { return nil }
    guard let scheme = urlComponents.scheme else { return nil }
    guard let host = urlComponents.host else { return nil }
    var params: [String: String] = [:]
    queryItems.forEach ({ (urlQueryItem: URLQueryItem) in
        if var value = urlQueryItem.value {
            if value.hasPrefix("$") {
                value = String(value.dropFirst(1))
            }
            params[urlQueryItem.name] = value
        }
    })
    return (scheme: scheme, host: host, params: params)
}

parsingURL(url: url)
