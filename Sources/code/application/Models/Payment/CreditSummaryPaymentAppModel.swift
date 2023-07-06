

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreditSummary
         Used By: Payment
     */
    class CreditSummary: Codable {
        public var balance: BalanceDetails?

        public var merchantCustomerRefId: String?

        public var amountAvailable: BalanceDetails?

        public var status: String?

        public var statusMessage: String?

        public var buyerStatus: String?

        public var creditLineId: String?

        public enum CodingKeys: String, CodingKey {
            case balance

            case merchantCustomerRefId = "merchant_customer_ref_id"

            case amountAvailable = "amount_available"

            case status

            case statusMessage = "status_message"

            case buyerStatus = "buyer_status"

            case creditLineId = "credit_line_id"
        }

        public init(amountAvailable: BalanceDetails? = nil, balance: BalanceDetails? = nil, buyerStatus: String? = nil, creditLineId: String? = nil, merchantCustomerRefId: String? = nil, status: String? = nil, statusMessage: String? = nil) {
            self.balance = balance

            self.merchantCustomerRefId = merchantCustomerRefId

            self.amountAvailable = amountAvailable

            self.status = status

            self.statusMessage = statusMessage

            self.buyerStatus = buyerStatus

            self.creditLineId = creditLineId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                amountAvailable = try container.decode(BalanceDetails.self, forKey: .amountAvailable)

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
                statusMessage = try container.decode(String.self, forKey: .statusMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buyerStatus = try container.decode(String.self, forKey: .buyerStatus)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(balance, forKey: .balance)

            try? container.encode(merchantCustomerRefId, forKey: .merchantCustomerRefId)

            try? container.encodeIfPresent(amountAvailable, forKey: .amountAvailable)

            try? container.encode(status, forKey: .status)

            try? container.encode(statusMessage, forKey: .statusMessage)

            try? container.encode(buyerStatus, forKey: .buyerStatus)

            try? container.encode(creditLineId, forKey: .creditLineId)
        }
    }
}
