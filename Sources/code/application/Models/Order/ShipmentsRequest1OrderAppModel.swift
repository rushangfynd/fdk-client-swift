

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: ShipmentsRequest1
         Used By: Order
     */
    class ShipmentsRequest1: Codable {
        public var identifier: String

        public var dataUpdates: DataUpdates1?

        public var reasons: ReasonsData1?

        public var products: [Products1]?

        public enum CodingKeys: String, CodingKey {
            case identifier

            case dataUpdates = "data_updates"

            case reasons

            case products
        }

        public init(dataUpdates: DataUpdates1? = nil, identifier: String, products: [Products1]? = nil, reasons: ReasonsData1? = nil) {
            self.identifier = identifier

            self.dataUpdates = dataUpdates

            self.reasons = reasons

            self.products = products
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode(String.self, forKey: .identifier)

            do {
                dataUpdates = try container.decode(DataUpdates1.self, forKey: .dataUpdates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasons = try container.decode(ReasonsData1.self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                products = try container.decode([Products1].self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(dataUpdates, forKey: .dataUpdates)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(products, forKey: .products)
        }
    }
}