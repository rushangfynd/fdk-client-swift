

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CouponValidity
         Used By: Cart
     */

    class CouponValidity: Codable {
        public var displayMessageEn: String?

        public var valid: Bool?

        public var nextValidationRequired: Bool?

        public var title: String?

        public var discount: Double?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case displayMessageEn = "display_message_en"

            case valid

            case nextValidationRequired = "next_validation_required"

            case title

            case discount

            case code
        }

        public init(code: String? = nil, discount: Double? = nil, displayMessageEn: String? = nil, nextValidationRequired: Bool? = nil, title: String? = nil, valid: Bool? = nil) {
            self.displayMessageEn = displayMessageEn

            self.valid = valid

            self.nextValidationRequired = nextValidationRequired

            self.title = title

            self.discount = discount

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayMessageEn = try container.decode(String.self, forKey: .displayMessageEn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                valid = try container.decode(Bool.self, forKey: .valid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nextValidationRequired = try container.decode(Bool.self, forKey: .nextValidationRequired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(Double.self, forKey: .discount)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(displayMessageEn, forKey: .displayMessageEn)

            try? container.encodeIfPresent(valid, forKey: .valid)

            try? container.encode(nextValidationRequired, forKey: .nextValidationRequired)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encode(code, forKey: .code)
        }
    }
}
