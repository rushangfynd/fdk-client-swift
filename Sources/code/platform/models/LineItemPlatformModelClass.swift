

import Foundation
public extension PlatformClient {
    /*
         Model: LineItem
         Used By: Order
     */

    class LineItem: Codable {
        public var externalLineId: String?

        public var charges: [Charge]

        public var sellerIdentifier: String

        public var quantity: Int?

        public var customMessasge: String?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case externalLineId = "external_line_id"

            case charges

            case sellerIdentifier = "seller_identifier"

            case quantity

            case customMessasge = "custom_messasge"

            case meta
        }

        public init(charges: [Charge], customMessasge: String? = nil, externalLineId: String? = nil, meta: [String: Any]? = nil, quantity: Int? = nil, sellerIdentifier: String) {
            self.externalLineId = externalLineId

            self.charges = charges

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.customMessasge = customMessasge

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                externalLineId = try container.decode(String.self, forKey: .externalLineId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            charges = try container.decode([Charge].self, forKey: .charges)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customMessasge = try container.decode(String.self, forKey: .customMessasge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(externalLineId, forKey: .externalLineId)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(customMessasge, forKey: .customMessasge)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
