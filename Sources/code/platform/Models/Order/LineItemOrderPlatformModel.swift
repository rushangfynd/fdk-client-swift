

import Foundation

public extension PlatformClient.Order {
    /*
         Model: LineItem
         Used By: Order
     */

    class LineItem: Codable {
        public var meta: [String: Any]?

        public var charges: [Charge]?

        public var sellerIdentifier: String

        public var externalLineId: String?

        public var quantity: Int?

        public var customMessasge: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case charges

            case sellerIdentifier = "seller_identifier"

            case externalLineId = "external_line_id"

            case quantity

            case customMessasge = "custom_messasge"
        }

        public init(charges: [Charge]? = nil, customMessasge: String? = nil, externalLineId: String? = nil, meta: [String: Any]? = nil, quantity: Int? = nil, sellerIdentifier: String) {
            self.meta = meta

            self.charges = charges

            self.sellerIdentifier = sellerIdentifier

            self.externalLineId = externalLineId

            self.quantity = quantity

            self.customMessasge = customMessasge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                charges = try container.decode([Charge].self, forKey: .charges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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

            do {
                customMessasge = try container.decode(String.self, forKey: .customMessasge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(externalLineId, forKey: .externalLineId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(customMessasge, forKey: .customMessasge)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: LineItem
         Used By: Order
     */

    class LineItem: Codable {
        public var meta: [String: Any]?

        public var charges: [Charge]?

        public var sellerIdentifier: String

        public var externalLineId: String?

        public var quantity: Int?

        public var customMessasge: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case charges

            case sellerIdentifier = "seller_identifier"

            case externalLineId = "external_line_id"

            case quantity

            case customMessasge = "custom_messasge"
        }

        public init(charges: [Charge]? = nil, customMessasge: String? = nil, externalLineId: String? = nil, meta: [String: Any]? = nil, quantity: Int? = nil, sellerIdentifier: String) {
            self.meta = meta

            self.charges = charges

            self.sellerIdentifier = sellerIdentifier

            self.externalLineId = externalLineId

            self.quantity = quantity

            self.customMessasge = customMessasge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                charges = try container.decode([Charge].self, forKey: .charges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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

            do {
                customMessasge = try container.decode(String.self, forKey: .customMessasge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(charges, forKey: .charges)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(externalLineId, forKey: .externalLineId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(customMessasge, forKey: .customMessasge)
        }
    }
}
