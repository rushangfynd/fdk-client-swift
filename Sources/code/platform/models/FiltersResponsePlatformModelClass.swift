

import Foundation
public extension PlatformClient {
    /*
         Model: FiltersResponse
         Used By: Orders
     */

    class FiltersResponse: Codable {
        public var deliveryPartners: [Filters]?

        public var channels: [Filters]?

        public enum CodingKeys: String, CodingKey {
            case deliveryPartners = "delivery_partners"

            case channels
        }

        public init(channels: [Filters]? = nil, deliveryPartners: [Filters]? = nil) {
            self.deliveryPartners = deliveryPartners

            self.channels = channels
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deliveryPartners = try container.decode([Filters].self, forKey: .deliveryPartners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channels = try container.decode([Filters].self, forKey: .channels)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryPartners, forKey: .deliveryPartners)

            try? container.encodeIfPresent(channels, forKey: .channels)
        }
    }
}
