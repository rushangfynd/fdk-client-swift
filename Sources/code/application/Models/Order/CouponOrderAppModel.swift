

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: Coupon
         Used By: Order
     */
    class Coupon: Codable {
        public var value: Double?

        public var code: String?

        public var couponType: String?

        public var id: Double?

        public var payableCategory: String?

        public enum CodingKeys: String, CodingKey {
            case value

            case code

            case couponType = "coupon_type"

            case id

            case payableCategory = "payable_category"
        }

        public init(code: String? = nil, couponType: String? = nil, id: Double? = nil, payableCategory: String? = nil, value: Double? = nil) {
            self.value = value

            self.code = code

            self.couponType = couponType

            self.id = id

            self.payableCategory = payableCategory
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(Double.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponType = try container.decode(String.self, forKey: .couponType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Double.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payableCategory = try container.decode(String.self, forKey: .payableCategory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(couponType, forKey: .couponType)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(payableCategory, forKey: .payableCategory)
        }
    }
}