

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: CartCheckoutResponse
         Used By: PosCart
     */
    class CartCheckoutResponse: Codable {
        public var cart: CheckCart?

        public var callbackUrl: String?

        public var data: [String: Any]?

        public var orderId: String?

        public var message: String?

        public var appInterceptUrl: String?

        public var paymentConfirmUrl: String?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case cart

            case callbackUrl = "callback_url"

            case data

            case orderId = "order_id"

            case message

            case appInterceptUrl = "app_intercept_url"

            case paymentConfirmUrl = "payment_confirm_url"

            case success
        }

        public init(appInterceptUrl: String? = nil, callbackUrl: String? = nil, cart: CheckCart? = nil, data: [String: Any]? = nil, message: String? = nil, orderId: String? = nil, paymentConfirmUrl: String? = nil, success: Bool? = nil) {
            self.cart = cart

            self.callbackUrl = callbackUrl

            self.data = data

            self.orderId = orderId

            self.message = message

            self.appInterceptUrl = appInterceptUrl

            self.paymentConfirmUrl = paymentConfirmUrl

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cart = try container.decode(CheckCart.self, forKey: .cart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                callbackUrl = try container.decode(String.self, forKey: .callbackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

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
                appInterceptUrl = try container.decode(String.self, forKey: .appInterceptUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentConfirmUrl = try container.decode(String.self, forKey: .paymentConfirmUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cart, forKey: .cart)

            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(appInterceptUrl, forKey: .appInterceptUrl)

            try? container.encodeIfPresent(paymentConfirmUrl, forKey: .paymentConfirmUrl)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
