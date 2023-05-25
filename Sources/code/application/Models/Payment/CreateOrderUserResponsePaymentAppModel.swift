

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreateOrderUserResponse
         Used By: Payment
     */
    class CreateOrderUserResponse: Codable {
        public var message: String

        public var data: CreateOrderUserData?

        public var callbackUrl: String?

        public var orderId: String?

        public var statusCode: Int

        public var success: Bool

        public var paymentConfirmUrl: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case data

            case callbackUrl = "callback_url"

            case orderId = "order_id"

            case statusCode = "status_code"

            case success

            case paymentConfirmUrl = "payment_confirm_url"
        }

        public init(callbackUrl: String? = nil, data: CreateOrderUserData? = nil, message: String, orderId: String? = nil, paymentConfirmUrl: String? = nil, statusCode: Int, success: Bool) {
            self.message = message

            self.data = data

            self.callbackUrl = callbackUrl

            self.orderId = orderId

            self.statusCode = statusCode

            self.success = success

            self.paymentConfirmUrl = paymentConfirmUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            do {
                data = try container.decode(CreateOrderUserData.self, forKey: .data)

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
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                paymentConfirmUrl = try container.decode(String.self, forKey: .paymentConfirmUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encode(callbackUrl, forKey: .callbackUrl)

            try? container.encode(orderId, forKey: .orderId)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(paymentConfirmUrl, forKey: .paymentConfirmUrl)
        }
    }
}
