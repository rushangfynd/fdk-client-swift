

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */
    class PaymentInitializationResponse: Codable {
        public var virtualId: String?

        public var merchantOrderId: String

        public var timeout: Int?

        public var pollingUrl: String

        public var method: String

        public var vpa: String?

        public var razorpayPaymentId: String?

        public var upiPollUrl: String?

        public var success: Bool

        public var aggregatorOrderId: String?

        public var amount: Int?

        public var aggregator: String

        public var customerId: String?

        public var status: String?

        public var bqrImage: String?

        public var currency: String?

        public enum CodingKeys: String, CodingKey {
            case virtualId = "virtual_id"

            case merchantOrderId = "merchant_order_id"

            case timeout

            case pollingUrl = "polling_url"

            case method

            case vpa

            case razorpayPaymentId = "razorpay_payment_id"

            case upiPollUrl = "upi_poll_url"

            case success

            case aggregatorOrderId = "aggregator_order_id"

            case amount

            case aggregator

            case customerId = "customer_id"

            case status

            case bqrImage = "bqr_image"

            case currency
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, currency: String? = nil, customerId: String? = nil, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            self.virtualId = virtualId

            self.merchantOrderId = merchantOrderId

            self.timeout = timeout

            self.pollingUrl = pollingUrl

            self.method = method

            self.vpa = vpa

            self.razorpayPaymentId = razorpayPaymentId

            self.upiPollUrl = upiPollUrl

            self.success = success

            self.aggregatorOrderId = aggregatorOrderId

            self.amount = amount

            self.aggregator = aggregator

            self.customerId = customerId

            self.status = status

            self.bqrImage = bqrImage

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                virtualId = try container.decode(String.self, forKey: .virtualId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            method = try container.decode(String.self, forKey: .method)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

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

            do {
                upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

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

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                customerId = try container.decode(String.self, forKey: .customerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

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
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encode(currency, forKey: .currency)
        }
    }
}
