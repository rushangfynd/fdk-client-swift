

import Foundation
public extension PlatformClient {
    /*
         Model: OrderDetailsData
         Used By: Order
     */

    class OrderDetailsData: Codable {
        public var affiliateId: String?

        public var codCharges: String?

        public var orderingChannelLogo: [String: Any]?

        public var orderDate: String?

        public var orderValue: String?

        public var taxDetails: [String: Any]?

        public var source: String?

        public var orderingChannel: String?

        public var fyndOrderId: String

        public enum CodingKeys: String, CodingKey {
            case affiliateId = "affiliate_id"

            case codCharges = "cod_charges"

            case orderingChannelLogo = "ordering_channel_logo"

            case orderDate = "order_date"

            case orderValue = "order_value"

            case taxDetails = "tax_details"

            case source

            case orderingChannel = "ordering_channel"

            case fyndOrderId = "fynd_order_id"
        }

        public init(affiliateId: String? = nil, codCharges: String? = nil, fyndOrderId: String, orderingChannel: String? = nil, orderingChannelLogo: [String: Any]? = nil, orderDate: String? = nil, orderValue: String? = nil, source: String? = nil, taxDetails: [String: Any]? = nil) {
            self.affiliateId = affiliateId

            self.codCharges = codCharges

            self.orderingChannelLogo = orderingChannelLogo

            self.orderDate = orderDate

            self.orderValue = orderValue

            self.taxDetails = taxDetails

            self.source = source

            self.orderingChannel = orderingChannel

            self.fyndOrderId = fyndOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codCharges = try container.decode(String.self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingChannelLogo = try container.decode([String: Any].self, forKey: .orderingChannelLogo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderDate = try container.decode(String.self, forKey: .orderDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderValue = try container.decode(String.self, forKey: .orderValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxDetails = try container.decode([String: Any].self, forKey: .taxDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                source = try container.decode(String.self, forKey: .source)

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

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(orderingChannelLogo, forKey: .orderingChannelLogo)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
        }
    }
}
