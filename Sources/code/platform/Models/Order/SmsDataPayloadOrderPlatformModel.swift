

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var shipmentId: Int

        public var message: String

        public var orderId: String

        public var brandName: String

        public var phoneNumber: Int

        public var amountPaid: Int

        public var countryCode: String

        public var paymentMode: String

        public var customerName: String

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case message

            case orderId = "order_id"

            case brandName = "brand_name"

            case phoneNumber = "phone_number"

            case amountPaid = "amount_paid"

            case countryCode = "country_code"

            case paymentMode = "payment_mode"

            case customerName = "customer_name"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.shipmentId = shipmentId

            self.message = message

            self.orderId = orderId

            self.brandName = brandName

            self.phoneNumber = phoneNumber

            self.amountPaid = amountPaid

            self.countryCode = countryCode

            self.paymentMode = paymentMode

            self.customerName = customerName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            message = try container.decode(String.self, forKey: .message)

            orderId = try container.decode(String.self, forKey: .orderId)

            brandName = try container.decode(String.self, forKey: .brandName)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            customerName = try container.decode(String.self, forKey: .customerName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(customerName, forKey: .customerName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var shipmentId: Int

        public var message: String

        public var orderId: String

        public var brandName: String

        public var phoneNumber: Int

        public var amountPaid: Int

        public var countryCode: String

        public var paymentMode: String

        public var customerName: String

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case message

            case orderId = "order_id"

            case brandName = "brand_name"

            case phoneNumber = "phone_number"

            case amountPaid = "amount_paid"

            case countryCode = "country_code"

            case paymentMode = "payment_mode"

            case customerName = "customer_name"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.shipmentId = shipmentId

            self.message = message

            self.orderId = orderId

            self.brandName = brandName

            self.phoneNumber = phoneNumber

            self.amountPaid = amountPaid

            self.countryCode = countryCode

            self.paymentMode = paymentMode

            self.customerName = customerName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            message = try container.decode(String.self, forKey: .message)

            orderId = try container.decode(String.self, forKey: .orderId)

            brandName = try container.decode(String.self, forKey: .brandName)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            customerName = try container.decode(String.self, forKey: .customerName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(customerName, forKey: .customerName)
        }
    }
}
