

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: OfferItem
         Used By: Cart
     */
    class OfferItem: Codable {
        public var total: Double?

        public var quantity: Int?

        public var type: String?

        public var margin: Int?

        public var autoApplied: Bool?

        public var price: OfferPrice?

        public var best: Bool?

        public enum CodingKeys: String, CodingKey {
            case total

            case quantity

            case type

            case margin

            case autoApplied = "auto_applied"

            case price

            case best
        }

        public init(autoApplied: Bool? = nil, best: Bool? = nil, margin: Int? = nil, price: OfferPrice? = nil, quantity: Int? = nil, total: Double? = nil, type: String? = nil) {
            self.total = total

            self.quantity = quantity

            self.type = type

            self.margin = margin

            self.autoApplied = autoApplied

            self.price = price

            self.best = best
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                total = try container.decode(Double.self, forKey: .total)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                margin = try container.decode(Int.self, forKey: .margin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                autoApplied = try container.decode(Bool.self, forKey: .autoApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(OfferPrice.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                best = try container.decode(Bool.self, forKey: .best)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(margin, forKey: .margin)

            try? container.encodeIfPresent(autoApplied, forKey: .autoApplied)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(best, forKey: .best)
        }
    }
}