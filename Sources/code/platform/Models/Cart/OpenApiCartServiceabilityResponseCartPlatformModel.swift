

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiCartServiceabilityResponse
         Used By: Cart
     */

    class OpenApiCartServiceabilityResponse: Codable {
        public var deliveryPromise: ShipmentPromise?

        public var message: String?

        public var items: [CartProductInfo]?

        public var isValid: Bool?

        public var breakupValues: CartBreakup?

        public enum CodingKeys: String, CodingKey {
            case deliveryPromise = "delivery_promise"

            case message

            case items

            case isValid = "is_valid"

            case breakupValues = "breakup_values"
        }

        public init(breakupValues: CartBreakup? = nil, deliveryPromise: ShipmentPromise? = nil, isValid: Bool? = nil, items: [CartProductInfo]? = nil, message: String? = nil) {
            self.deliveryPromise = deliveryPromise

            self.message = message

            self.items = items

            self.isValid = isValid

            self.breakupValues = breakupValues
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([CartProductInfo].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isValid = try container.decode(Bool.self, forKey: .isValid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        }
    }
}
