

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */

    class PaymentInitializationResponse: Codable {
        public var pollingUrl: String

        public var upiPollUrl: String?

        public var vpa: String?

        public var amount: Int?

        public var aggregatorOrderId: String?

        public var aggregator: String

        public var razorpayPaymentId: String?

        public var virtualId: String?

        public var bqrImage: String?

        public var currency: String?

        public var method: String

        public var merchantOrderId: String

        public var deviceId: String?

        public var success: Bool

        public var timeout: Int?

        public var customerId: String?

        public var status: String?

        public enum CodingKeys: String, CodingKey {
            case pollingUrl = "polling_url"

            case upiPollUrl = "upi_poll_url"

            case vpa

            case amount

            case aggregatorOrderId = "aggregator_order_id"

            case aggregator

            case razorpayPaymentId = "razorpay_payment_id"

            case virtualId = "virtual_id"

            case bqrImage = "bqr_image"

            case currency

            case method

            case merchantOrderId = "merchant_order_id"

            case deviceId = "device_id"

            case success

            case timeout

            case customerId = "customer_id"

            case status
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, currency: String? = nil, customerId: String? = nil, deviceId: String? = nil, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            self.pollingUrl = pollingUrl

            self.upiPollUrl = upiPollUrl

            self.vpa = vpa

            self.amount = amount

            self.aggregatorOrderId = aggregatorOrderId

            self.aggregator = aggregator

            self.razorpayPaymentId = razorpayPaymentId

            self.virtualId = virtualId

            self.bqrImage = bqrImage

            self.currency = currency

            self.method = method

            self.merchantOrderId = merchantOrderId

            self.deviceId = deviceId

            self.success = success

            self.timeout = timeout

            self.customerId = customerId

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            do {
                upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

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
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                virtualId = try container.decode(String.self, forKey: .virtualId)

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

            method = try container.decode(String.self, forKey: .method)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

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
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encode(currency, forKey: .currency)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */

    class PaymentInitializationResponse: Codable {
        public var pollingUrl: String

        public var upiPollUrl: String?

        public var vpa: String?

        public var amount: Int?

        public var aggregatorOrderId: String?

        public var aggregator: String

        public var razorpayPaymentId: String?

        public var virtualId: String?

        public var bqrImage: String?

        public var currency: String?

        public var method: String

        public var merchantOrderId: String

        public var deviceId: String?

        public var success: Bool

        public var timeout: Int?

        public var customerId: String?

        public var status: String?

        public enum CodingKeys: String, CodingKey {
            case pollingUrl = "polling_url"

            case upiPollUrl = "upi_poll_url"

            case vpa

            case amount

            case aggregatorOrderId = "aggregator_order_id"

            case aggregator

            case razorpayPaymentId = "razorpay_payment_id"

            case virtualId = "virtual_id"

            case bqrImage = "bqr_image"

            case currency

            case method

            case merchantOrderId = "merchant_order_id"

            case deviceId = "device_id"

            case success

            case timeout

            case customerId = "customer_id"

            case status
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, currency: String? = nil, customerId: String? = nil, deviceId: String? = nil, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            self.pollingUrl = pollingUrl

            self.upiPollUrl = upiPollUrl

            self.vpa = vpa

            self.amount = amount

            self.aggregatorOrderId = aggregatorOrderId

            self.aggregator = aggregator

            self.razorpayPaymentId = razorpayPaymentId

            self.virtualId = virtualId

            self.bqrImage = bqrImage

            self.currency = currency

            self.method = method

            self.merchantOrderId = merchantOrderId

            self.deviceId = deviceId

            self.success = success

            self.timeout = timeout

            self.customerId = customerId

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            do {
                upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

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
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                virtualId = try container.decode(String.self, forKey: .virtualId)

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

            method = try container.decode(String.self, forKey: .method)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

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
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encode(currency, forKey: .currency)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}