

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationListingFilterValue
         Used By: Catalog
     */

    class ConfigurationListingFilterValue: Codable {
        public var sort: String?

        public var condition: String?

        public var map: [String: Any]?

        public var bucketPoints: [ConfigurationBucketPoints]?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case sort

            case condition

            case map

            case bucketPoints = "bucket_points"

            case value
        }

        public init(bucketPoints: [ConfigurationBucketPoints]? = nil, condition: String? = nil, map: [String: Any]? = nil, sort: String? = nil, value: String? = nil) {
            self.sort = sort

            self.condition = condition

            self.map = map

            self.bucketPoints = bucketPoints

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sort = try container.decode(String.self, forKey: .sort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                condition = try container.decode(String.self, forKey: .condition)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                map = try container.decode([String: Any].self, forKey: .map)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bucketPoints = try container.decode([ConfigurationBucketPoints].self, forKey: .bucketPoints)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sort, forKey: .sort)

            try? container.encodeIfPresent(condition, forKey: .condition)

            try? container.encodeIfPresent(map, forKey: .map)

            try? container.encodeIfPresent(bucketPoints, forKey: .bucketPoints)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}
