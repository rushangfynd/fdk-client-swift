

import Foundation
public extension PlatformClient {
    /*
         Model: LineItem
         Used By: Order
     */

    class LineItem: Codable {
        public var charges: [Charge]

        public var sellerIdentifier: String

        public var customMessasge: String?

        public var meta: [String: Any]?

        public var externalLineId: String?

        public var quantity: Int?

        public enum CodingKeys: String, CodingKey {
            case charges

            case sellerIdentifier = "seller_identifier"

            case customMessasge = "custom_messasge"

            case meta

            case externalLineId = "external_line_id"

            case quantity
        }

        public init(charges: [Charge], customMessasge: String? = nil, externalLineId: String? = nil, meta: [String: Any]? = nil, quantity: Int? = nil, sellerIdentifier: String) {
            self.charges = charges

            self.sellerIdentifier = sellerIdentifier

            self.customMessasge = customMessasge

            self.meta = meta

            self.externalLineId = externalLineId

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            charges = try container.decode([Charge].self, forKey: .charges)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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

            do {
                externalLineId = try container.decode(String.self, forKey: .externalLineId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(customMessasge, forKey: .customMessasge)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(externalLineId, forKey: .externalLineId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
