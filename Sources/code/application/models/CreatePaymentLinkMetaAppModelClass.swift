

import Foundation
public extension ApplicationClient {
    /*
         Model: CreatePaymentLinkMeta
         Used By: Payment
     */
    class CreatePaymentLinkMeta: Codable {
        public var checkoutMode: String

        public var assignCardId: String?

        public var pincode: String

        public var amount: String

        public var cartId: String

        public enum CodingKeys: String, CodingKey {
            case checkoutMode = "checkout_mode"

            case assignCardId = "assign_card_id"

            case pincode

            case amount

            case cartId = "cart_id"
        }

        public init(amount: String, assignCardId: String? = nil, cartId: String, checkoutMode: String, pincode: String) {
            self.checkoutMode = checkoutMode

            self.assignCardId = assignCardId

            self.pincode = pincode

            self.amount = amount

            self.cartId = cartId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            do {
                assignCardId = try container.decode(String.self, forKey: .assignCardId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            amount = try container.decode(String.self, forKey: .amount)

            cartId = try container.decode(String.self, forKey: .cartId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encode(assignCardId, forKey: .assignCardId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(cartId, forKey: .cartId)
        }
    }
}
