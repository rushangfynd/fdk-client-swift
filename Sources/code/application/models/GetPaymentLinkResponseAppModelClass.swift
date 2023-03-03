

import Foundation
public extension ApplicationClient {
    /*
         Model: GetPaymentLinkResponse
         Used By: Payment
     */
    class GetPaymentLinkResponse: Codable {
        public var merchantName: String?

        public var message: String

        public var success: Bool

        public var paymentLinkCurrentStatus: String?

        public var externalOrderId: String?

        public var statusCode: Int

        public var amount: Double?

        public var paymentLinkUrl: String?

        public var pollingTimeout: Int?

        public enum CodingKeys: String, CodingKey {
            case merchantName = "merchant_name"

            case message

            case success

            case paymentLinkCurrentStatus = "payment_link_current_status"

            case externalOrderId = "external_order_id"

            case statusCode = "status_code"

            case amount

            case paymentLinkUrl = "payment_link_url"

            case pollingTimeout = "polling_timeout"
        }

        public init(amount: Double? = nil, externalOrderId: String? = nil, merchantName: String? = nil, message: String, paymentLinkCurrentStatus: String? = nil, paymentLinkUrl: String? = nil, pollingTimeout: Int? = nil, statusCode: Int, success: Bool) {
            self.merchantName = merchantName

            self.message = message

            self.success = success

            self.paymentLinkCurrentStatus = paymentLinkCurrentStatus

            self.externalOrderId = externalOrderId

            self.statusCode = statusCode

            self.amount = amount

            self.paymentLinkUrl = paymentLinkUrl

            self.pollingTimeout = pollingTimeout
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                merchantName = try container.decode(String.self, forKey: .merchantName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                paymentLinkCurrentStatus = try container.decode(String.self, forKey: .paymentLinkCurrentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentLinkUrl = try container.decode(String.self, forKey: .paymentLinkUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pollingTimeout = try container.decode(Int.self, forKey: .pollingTimeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(merchantName, forKey: .merchantName)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(paymentLinkCurrentStatus, forKey: .paymentLinkCurrentStatus)

            try? container.encode(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(paymentLinkUrl, forKey: .paymentLinkUrl)

            try? container.encode(pollingTimeout, forKey: .pollingTimeout)
        }
    }
}
