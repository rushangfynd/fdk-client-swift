

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */

    class PaymentInitializationResponse: Codable {
        public var method: String

        public var razorpayPaymentId: String?

        public var merchantOrderId: String

        public var upiPollUrl: String?

        public var paymentId: String?

        public var success: Bool

        public var amount: Int?

        public var orderId: String?

        public var pollingUrl: String

        public var currency: String?

        public var contact: String?

        public var email: String?

        public var customerId: String?

        public var aggregatorOrderId: String?

        public var aggregator: String

        public var bqrImage: String?

        public var deviceId: String?

        public var status: String?

        public var virtualId: String?

        public var timeout: Int?

        public var vpa: String?

        public enum CodingKeys: String, CodingKey {
            case method

            case razorpayPaymentId = "razorpay_payment_id"

            case merchantOrderId = "merchant_order_id"

            case upiPollUrl = "upi_poll_url"

            case paymentId = "payment_id"

            case success

            case amount

            case orderId = "order_id"

            case pollingUrl = "polling_url"

            case currency

            case contact

            case email

            case customerId = "customer_id"

            case aggregatorOrderId = "aggregator_order_id"

            case aggregator

            case bqrImage = "bqr_image"

            case deviceId = "device_id"

            case status

            case virtualId = "virtual_id"

            case timeout

            case vpa
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, contact: String? = nil, currency: String? = nil, customerId: String? = nil, deviceId: String? = nil, email: String? = nil, merchantOrderId: String, method: String, orderId: String? = nil, paymentId: String? = nil, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            self.method = method

            self.razorpayPaymentId = razorpayPaymentId

            self.merchantOrderId = merchantOrderId

            self.upiPollUrl = upiPollUrl

            self.paymentId = paymentId

            self.success = success

            self.amount = amount

            self.orderId = orderId

            self.pollingUrl = pollingUrl

            self.currency = currency

            self.contact = contact

            self.email = email

            self.customerId = customerId

            self.aggregatorOrderId = aggregatorOrderId

            self.aggregator = aggregator

            self.bqrImage = bqrImage

            self.deviceId = deviceId

            self.status = status

            self.virtualId = virtualId

            self.timeout = timeout

            self.vpa = vpa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            method = try container.decode(String.self, forKey: .method)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                amount = try container.decode(Int.self, forKey: .amount)

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

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contact = try container.decode(String.self, forKey: .contact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

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
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                bqrImage = try container.decode(String.self, forKey: .bqrImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

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
                virtualId = try container.decode(String.self, forKey: .virtualId)

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
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encode(currency, forKey: .currency)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encode(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(vpa, forKey: .vpa)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */

    class PaymentInitializationResponse: Codable {
        public var method: String

        public var razorpayPaymentId: String?

        public var merchantOrderId: String

        public var upiPollUrl: String?

        public var paymentId: String?

        public var success: Bool

        public var amount: Int?

        public var orderId: String?

        public var pollingUrl: String

        public var currency: String?

        public var contact: String?

        public var email: String?

        public var customerId: String?

        public var aggregatorOrderId: String?

        public var aggregator: String

        public var bqrImage: String?

        public var deviceId: String?

        public var status: String?

        public var virtualId: String?

        public var timeout: Int?

        public var vpa: String?

        public enum CodingKeys: String, CodingKey {
            case method

            case razorpayPaymentId = "razorpay_payment_id"

            case merchantOrderId = "merchant_order_id"

            case upiPollUrl = "upi_poll_url"

            case paymentId = "payment_id"

            case success

            case amount

            case orderId = "order_id"

            case pollingUrl = "polling_url"

            case currency

            case contact

            case email

            case customerId = "customer_id"

            case aggregatorOrderId = "aggregator_order_id"

            case aggregator

            case bqrImage = "bqr_image"

            case deviceId = "device_id"

            case status

            case virtualId = "virtual_id"

            case timeout

            case vpa
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, contact: String? = nil, currency: String? = nil, customerId: String? = nil, deviceId: String? = nil, email: String? = nil, merchantOrderId: String, method: String, orderId: String? = nil, paymentId: String? = nil, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            self.method = method

            self.razorpayPaymentId = razorpayPaymentId

            self.merchantOrderId = merchantOrderId

            self.upiPollUrl = upiPollUrl

            self.paymentId = paymentId

            self.success = success

            self.amount = amount

            self.orderId = orderId

            self.pollingUrl = pollingUrl

            self.currency = currency

            self.contact = contact

            self.email = email

            self.customerId = customerId

            self.aggregatorOrderId = aggregatorOrderId

            self.aggregator = aggregator

            self.bqrImage = bqrImage

            self.deviceId = deviceId

            self.status = status

            self.virtualId = virtualId

            self.timeout = timeout

            self.vpa = vpa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            method = try container.decode(String.self, forKey: .method)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                amount = try container.decode(Int.self, forKey: .amount)

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

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contact = try container.decode(String.self, forKey: .contact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

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
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                bqrImage = try container.decode(String.self, forKey: .bqrImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

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
                virtualId = try container.decode(String.self, forKey: .virtualId)

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
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encode(currency, forKey: .currency)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encode(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(vpa, forKey: .vpa)
        }
    }
}