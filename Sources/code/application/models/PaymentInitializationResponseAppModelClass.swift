

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */
    class PaymentInitializationResponse: Codable {
        public var method: String

        public var status: String?

        public var customerId: String?

        public var razorpayPaymentId: String?

        public var aggregator: String

        public var virtualId: String?

        public var success: Bool

        public var vpa: String?

        public var aggregatorOrderId: String?

        public var bqrImage: String?

        public var timeout: Int?

        public var currency: String?

        public var pollingUrl: String

        public var merchantOrderId: String

        public var deviceId: String?

        public var amount: Int?

        public var upiPollUrl: String?

        public enum CodingKeys: String, CodingKey {
            case method

            case status

            case customerId = "customer_id"

            case razorpayPaymentId = "razorpay_payment_id"

            case aggregator

            case virtualId = "virtual_id"

            case success

            case vpa

            case aggregatorOrderId = "aggregator_order_id"

            case bqrImage = "bqr_image"

            case timeout

            case currency

            case pollingUrl = "polling_url"

            case merchantOrderId = "merchant_order_id"

            case deviceId = "device_id"

            case amount

            case upiPollUrl = "upi_poll_url"
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, currency: String? = nil, customerId: String? = nil, deviceId: String? = nil, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            self.method = method

            self.status = status

            self.customerId = customerId

            self.razorpayPaymentId = razorpayPaymentId

            self.aggregator = aggregator

            self.virtualId = virtualId

            self.success = success

            self.vpa = vpa

            self.aggregatorOrderId = aggregatorOrderId

            self.bqrImage = bqrImage

            self.timeout = timeout

            self.currency = currency

            self.pollingUrl = pollingUrl

            self.merchantOrderId = merchantOrderId

            self.deviceId = deviceId

            self.amount = amount

            self.upiPollUrl = upiPollUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            method = try container.decode(String.self, forKey: .method)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerId = try container.decode(String.self, forKey: .customerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                virtualId = try container.decode(String.self, forKey: .virtualId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bqrImage = try container.decode(String.self, forKey: .bqrImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amount = try container.decode(Int.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(currency, forKey: .currency)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)
        }
    }
}
