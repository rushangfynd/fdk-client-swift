

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: UpdateCartPaymentRequest
         Used By: PosCart
     */
    class UpdateCartPaymentRequest: Codable {
        public var addressId: String?

        public var paymentMode: String?

        public var id: String?

        public var paymentIdentifier: String?

        public var aggregatorName: String?

        public var merchantCode: String?

        public enum CodingKeys: String, CodingKey {
            case addressId = "address_id"

            case paymentMode = "payment_mode"

            case id

            case paymentIdentifier = "payment_identifier"

            case aggregatorName = "aggregator_name"

            case merchantCode = "merchant_code"
        }

        public init(addressId: String? = nil, aggregatorName: String? = nil, id: String? = nil, merchantCode: String? = nil, paymentIdentifier: String? = nil, paymentMode: String? = nil) {
            self.addressId = addressId

            self.paymentMode = paymentMode

            self.id = id

            self.paymentIdentifier = paymentIdentifier

            self.aggregatorName = aggregatorName

            self.merchantCode = merchantCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                id = try container.decode(String.self, forKey: .id)

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

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addressId, forKey: .addressId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
        }
    }
}