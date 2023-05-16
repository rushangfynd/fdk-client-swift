

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartListSchema
         Used By: Cart
     */

    class CartListSchema: Codable {
        public var itemCounts: Int?

        public var pickUpCustomerDetails: [String: Any]?

        public var createdOn: String?

        public var cartId: String?

        public var userId: String?

        public var cartValue: Double?

        public enum CodingKeys: String, CodingKey {
            case itemCounts = "item_counts"

            case pickUpCustomerDetails = "pick_up_customer_details"

            case createdOn = "created_on"

            case cartId = "cart_id"

            case userId = "user_id"

            case cartValue = "cart_value"
        }

        public init(cartId: String? = nil, cartValue: Double? = nil, createdOn: String? = nil, itemCounts: Int? = nil, pickUpCustomerDetails: [String: Any]? = nil, userId: String? = nil) {
            self.itemCounts = itemCounts

            self.pickUpCustomerDetails = pickUpCustomerDetails

            self.createdOn = createdOn

            self.cartId = cartId

            self.userId = userId

            self.cartValue = cartValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemCounts = try container.decode(Int.self, forKey: .itemCounts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pickUpCustomerDetails = try container.decode([String: Any].self, forKey: .pickUpCustomerDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

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

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartValue = try container.decode(Double.self, forKey: .cartValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemCounts, forKey: .itemCounts)

            try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)
        }
    }
}
