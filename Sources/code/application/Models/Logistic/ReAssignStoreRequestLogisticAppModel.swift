

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: ReAssignStoreRequest
         Used By: Logistic
     */
    class ReAssignStoreRequest: Codable {
        public var toPincode: String

        public var articles: [[String: Any]]

        public var ignoredLocations: [Int]

        public var configuration: [String: Any]

        public var identifier: String

        public enum CodingKeys: String, CodingKey {
            case toPincode = "to_pincode"

            case articles

            case ignoredLocations = "ignored_locations"

            case configuration

            case identifier
        }

        public init(articles: [[String: Any]], configuration: [String: Any], identifier: String, ignoredLocations: [Int], toPincode: String) {
            self.toPincode = toPincode

            self.articles = articles

            self.ignoredLocations = ignoredLocations

            self.configuration = configuration

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            ignoredLocations = try container.decode([Int].self, forKey: .ignoredLocations)

            configuration = try container.decode([String: Any].self, forKey: .configuration)

            identifier = try container.decode(String.self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(ignoredLocations, forKey: .ignoredLocations)

            try? container.encodeIfPresent(configuration, forKey: .configuration)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
