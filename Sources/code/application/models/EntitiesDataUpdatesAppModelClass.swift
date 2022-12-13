

import Foundation
public extension ApplicationClient {
    /*
         Model: EntitiesDataUpdates
         Used By: Order
     */
    class EntitiesDataUpdates: Codable {
        public var filters: [[String: Any]]?

        public var data: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case filters

            case data
        }

        public init(data: [String: Any]? = nil, filters: [[String: Any]]? = nil) {
            self.filters = filters

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filters = try container.decode([[String: Any]].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}