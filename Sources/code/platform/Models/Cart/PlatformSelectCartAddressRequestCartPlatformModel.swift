

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PlatformSelectCartAddressRequest
         Used By: Cart
     */

    class PlatformSelectCartAddressRequest: Codable {
        public var billingAddressId: String?

        public var id: String?

        public var checkoutMode: String?

        public var userId: String?

        public var cartId: String?

        public enum CodingKeys: String, CodingKey {
            case billingAddressId = "billing_address_id"

            case id

            case checkoutMode = "checkout_mode"

            case userId = "user_id"

            case cartId = "cart_id"
        }

        public init(billingAddressId: String? = nil, cartId: String? = nil, checkoutMode: String? = nil, id: String? = nil, userId: String? = nil) {
            self.billingAddressId = billingAddressId

            self.id = id

            self.checkoutMode = checkoutMode

            self.userId = userId

            self.cartId = cartId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                billingAddressId = try container.decode(String.self, forKey: .billingAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(cartId, forKey: .cartId)
        }
    }
}
