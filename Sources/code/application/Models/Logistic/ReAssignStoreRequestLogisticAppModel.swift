

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: ReAssignStoreRequest
         Used By: Logistic
     */
    class ReAssignStoreRequest: Codable {
        public var articles: [[String: Any]]

        public var configuration: [String: Any]

        public var ignoredLocations: [String]

        public var toPincode: String

        public var identifier: String

        public enum CodingKeys: String, CodingKey {
            case articles

            case configuration

            case ignoredLocations = "ignored_locations"

            case toPincode = "to_pincode"

            case identifier
        }

        public init(articles: [[String: Any]], configuration: [String: Any], identifier: String, ignoredLocations: [String], toPincode: String) {
            self.articles = articles

            self.configuration = configuration

            self.ignoredLocations = ignoredLocations

            self.toPincode = toPincode

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            configuration = try container.decode([String: Any].self, forKey: .configuration)

            ignoredLocations = try container.decode([String].self, forKey: .ignoredLocations)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            identifier = try container.decode(String.self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(configuration, forKey: .configuration)

            try? container.encodeIfPresent(ignoredLocations, forKey: .ignoredLocations)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
