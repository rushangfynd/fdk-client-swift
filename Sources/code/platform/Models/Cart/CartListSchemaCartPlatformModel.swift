

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartListSchema
         Used By: Cart
     */

    class CartListSchema: Codable {
        public var userId: String?

        public var createdOn: String?

        public var cartValue: Double?

        public var pickUpCustomerDetails: [String: Any]?

        public var itemCounts: Int?

        public var cartId: String?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case createdOn = "created_on"

            case cartValue = "cart_value"

            case pickUpCustomerDetails = "pick_up_customer_details"

            case itemCounts = "item_counts"

            case cartId = "cart_id"
        }

        public init(cartId: String? = nil, cartValue: Double? = nil, createdOn: String? = nil, itemCounts: Int? = nil, pickUpCustomerDetails: [String: Any]? = nil, userId: String? = nil) {
            self.userId = userId

            self.createdOn = createdOn

            self.cartValue = cartValue

            self.pickUpCustomerDetails = pickUpCustomerDetails

            self.itemCounts = itemCounts

            self.cartId = cartId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                userId = try container.decode(String.self, forKey: .userId)

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
                cartValue = try container.decode(Double.self, forKey: .cartValue)

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
                itemCounts = try container.decode(Int.self, forKey: .itemCounts)

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

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)

            try? container.encodeIfPresent(itemCounts, forKey: .itemCounts)

            try? container.encodeIfPresent(cartId, forKey: .cartId)
        }
    }
}