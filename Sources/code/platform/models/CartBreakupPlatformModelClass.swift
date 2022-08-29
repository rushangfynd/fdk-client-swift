

import Foundation
public extension PlatformClient {
    /*
         Model: CartBreakup
         Used By: Cart
     */

    class CartBreakup: Codable {
        public var raw: RawBreakup?

        public var coupon: CouponBreakup?

        public var loyaltyPoints: LoyaltyPoints?

        public var display: [DisplayBreakup]?

        public enum CodingKeys: String, CodingKey {
            case raw

            case coupon

            case loyaltyPoints = "loyalty_points"

            case display
        }

        public init(coupon: CouponBreakup? = nil, display: [DisplayBreakup]? = nil, loyaltyPoints: LoyaltyPoints? = nil, raw: RawBreakup? = nil) {
            self.raw = raw

            self.coupon = coupon

            self.loyaltyPoints = loyaltyPoints

            self.display = display
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                raw = try container.decode(RawBreakup.self, forKey: .raw)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode(CouponBreakup.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                loyaltyPoints = try container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode([DisplayBreakup].self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(raw, forKey: .raw)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }
}
