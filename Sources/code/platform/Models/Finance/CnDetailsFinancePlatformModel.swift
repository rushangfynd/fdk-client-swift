

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: CnDetails
         Used By: Finance
     */

    class CnDetails: Codable {
        public var staffId: String?

        public var orderingChannel: String?

        public var expiryDate: String?

        public var dateIssued: String?

        public var channelOfIssuance: String?

        public var storeId: String?

        public var invoiceNumber: String?

        public var shipmentId: String?

        public var orderId: String?

        public enum CodingKeys: String, CodingKey {
            case staffId = "staff_id"

            case orderingChannel = "ordering_channel"

            case expiryDate = "expiry_date"

            case dateIssued = "date_issued"

            case channelOfIssuance = "channel_of_issuance"

            case storeId = "store_id"

            case invoiceNumber = "invoice_number"

            case shipmentId = "shipment_id"

            case orderId = "order_id"
        }

        public init(channelOfIssuance: String? = nil, dateIssued: String? = nil, expiryDate: String? = nil, invoiceNumber: String? = nil, orderingChannel: String? = nil, orderId: String? = nil, shipmentId: String? = nil, staffId: String? = nil, storeId: String? = nil) {
            self.staffId = staffId

            self.orderingChannel = orderingChannel

            self.expiryDate = expiryDate

            self.dateIssued = dateIssued

            self.channelOfIssuance = channelOfIssuance

            self.storeId = storeId

            self.invoiceNumber = invoiceNumber

            self.shipmentId = shipmentId

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                staffId = try container.decode(String.self, forKey: .staffId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expiryDate = try container.decode(String.self, forKey: .expiryDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateIssued = try container.decode(String.self, forKey: .dateIssued)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channelOfIssuance = try container.decode(String.self, forKey: .channelOfIssuance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(String.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceNumber = try container.decode(String.self, forKey: .invoiceNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(staffId, forKey: .staffId)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(expiryDate, forKey: .expiryDate)

            try? container.encodeIfPresent(dateIssued, forKey: .dateIssued)

            try? container.encodeIfPresent(channelOfIssuance, forKey: .channelOfIssuance)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(invoiceNumber, forKey: .invoiceNumber)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
