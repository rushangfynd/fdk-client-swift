

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: UpdateCartPaymentRequest
         Used By: Cart
     */
    class UpdateCartPaymentRequest: Codable {
        public var id: String?

        public var merchantCode: String?

        public var aggregatorName: String?

        public var addressId: String?

        public var paymentMode: String?

        public var paymentIdentifier: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case merchantCode = "merchant_code"

            case aggregatorName = "aggregator_name"

            case addressId = "address_id"

            case paymentMode = "payment_mode"

            case paymentIdentifier = "payment_identifier"
        }

        public init(addressId: String? = nil, aggregatorName: String? = nil, id: String? = nil, merchantCode: String? = nil, paymentIdentifier: String? = nil, paymentMode: String? = nil) {
            self.id = id

            self.merchantCode = merchantCode

            self.aggregatorName = aggregatorName

            self.addressId = addressId

            self.paymentMode = paymentMode

            self.paymentIdentifier = paymentIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addressId = try container.decode(String.self, forKey: .addressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(addressId, forKey: .addressId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)
        }
    }
}
