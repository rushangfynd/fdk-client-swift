

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PromotionPaymentModes
         Used By: Cart
     */

    class PromotionPaymentModes: Codable {
        public var codes: [String]?

        public var type: String

        public var uses: PaymentAllowValue1?

        public enum CodingKeys: String, CodingKey {
            case codes

            case type

            case uses
        }

        public init(codes: [String]? = nil, type: String, uses: PaymentAllowValue1? = nil) {
            self.codes = codes

            self.type = type

            self.uses = uses
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                codes = try container.decode([String].self, forKey: .codes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            do {
                uses = try container.decode(PaymentAllowValue1.self, forKey: .uses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codes, forKey: .codes)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(uses, forKey: .uses)
        }
    }
}
