

import Foundation
public extension PlatformClient {
    /*
         Model: CartList
         Used By: Cart
     */

    class CartList: Codable {
        public var cartId: String?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case cartId = "cart_id"

            case userId = "user_id"
        }

        public init(cartId: String? = nil, userId: String? = nil) {
            self.cartId = cartId

            self.userId = userId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }
}