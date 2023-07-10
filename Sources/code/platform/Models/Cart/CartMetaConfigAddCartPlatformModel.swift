

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartMetaConfigAdd
         Used By: Cart
     */

    class CartMetaConfigAdd: Codable {
        public var maxCartItems: Int?

        public var deliveryCharges: DeliveryCharges?

        public var revenueEngineCoupon: Bool?

        public var minCartValue: Int?

        public var bulkCoupons: Bool?

        public var giftPricing: Double?

        public var enabled: Bool?

        public var giftDisplayText: String?

        public enum CodingKeys: String, CodingKey {
            case maxCartItems = "max_cart_items"

            case deliveryCharges = "delivery_charges"

            case revenueEngineCoupon = "revenue_engine_coupon"

            case minCartValue = "min_cart_value"

            case bulkCoupons = "bulk_coupons"

            case giftPricing = "gift_pricing"

            case enabled

            case giftDisplayText = "gift_display_text"
        }

        public init(bulkCoupons: Bool? = nil, deliveryCharges: DeliveryCharges? = nil, enabled: Bool? = nil, giftDisplayText: String? = nil, giftPricing: Double? = nil, maxCartItems: Int? = nil, minCartValue: Int? = nil, revenueEngineCoupon: Bool? = nil) {
            self.maxCartItems = maxCartItems

            self.deliveryCharges = deliveryCharges

            self.revenueEngineCoupon = revenueEngineCoupon

            self.minCartValue = minCartValue

            self.bulkCoupons = bulkCoupons

            self.giftPricing = giftPricing

            self.enabled = enabled

            self.giftDisplayText = giftDisplayText
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                maxCartItems = try container.decode(Int.self, forKey: .maxCartItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryCharges = try container.decode(DeliveryCharges.self, forKey: .deliveryCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                revenueEngineCoupon = try container.decode(Bool.self, forKey: .revenueEngineCoupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minCartValue = try container.decode(Int.self, forKey: .minCartValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bulkCoupons = try container.decode(Bool.self, forKey: .bulkCoupons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                giftPricing = try container.decode(Double.self, forKey: .giftPricing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                giftDisplayText = try container.decode(String.self, forKey: .giftDisplayText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(maxCartItems, forKey: .maxCartItems)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(revenueEngineCoupon, forKey: .revenueEngineCoupon)

            try? container.encodeIfPresent(minCartValue, forKey: .minCartValue)

            try? container.encodeIfPresent(bulkCoupons, forKey: .bulkCoupons)

            try? container.encodeIfPresent(giftPricing, forKey: .giftPricing)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(giftDisplayText, forKey: .giftDisplayText)
        }
    }
}
