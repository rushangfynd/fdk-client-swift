

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreditSummary
         Used By: Payment
     */
    class CreditSummary: Codable {
        public var buyerStatus: String?

        public var balance: BalanceDetails?

        public var merchantCustomerRefId: String?

        public var status: String?

        public var amountAvailable: BalanceDetails?

        public var creditLineId: String?

        public var statusMessage: String?

        public enum CodingKeys: String, CodingKey {
            case buyerStatus = "buyer_status"

            case balance

            case merchantCustomerRefId = "merchant_customer_ref_id"

            case status

            case amountAvailable = "amount_available"

            case creditLineId = "credit_line_id"

            case statusMessage = "status_message"
        }

        public init(amountAvailable: BalanceDetails? = nil, balance: BalanceDetails? = nil, buyerStatus: String? = nil, creditLineId: String? = nil, merchantCustomerRefId: String? = nil, status: String? = nil, statusMessage: String? = nil) {
            self.buyerStatus = buyerStatus

            self.balance = balance

            self.merchantCustomerRefId = merchantCustomerRefId

            self.status = status

            self.amountAvailable = amountAvailable

            self.creditLineId = creditLineId

            self.statusMessage = statusMessage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                buyerStatus = try container.decode(String.self, forKey: .buyerStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                balance = try container.decode(BalanceDetails.self, forKey: .balance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantCustomerRefId = try container.decode(String.self, forKey: .merchantCustomerRefId)

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
                amountAvailable = try container.decode(BalanceDetails.self, forKey: .amountAvailable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                creditLineId = try container.decode(String.self, forKey: .creditLineId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                statusMessage = try container.decode(String.self, forKey: .statusMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(buyerStatus, forKey: .buyerStatus)

            try? container.encodeIfPresent(balance, forKey: .balance)

            try? container.encode(merchantCustomerRefId, forKey: .merchantCustomerRefId)

            try? container.encode(status, forKey: .status)

            try? container.encodeIfPresent(amountAvailable, forKey: .amountAvailable)

            try? container.encode(creditLineId, forKey: .creditLineId)

            try? container.encode(statusMessage, forKey: .statusMessage)
        }
    }
}
