

import Foundation
public extension PlatformClient {
    /*
         Model: BagUnit
         Used By: Orders
     */

    class BagUnit: Codable {
        public var shipmentId: String

        public var prices: Prices?

        public var bagId: Int

        public var totalShipmentBags: Int

        public var orderingChannel: String

        public var itemQuantity: Int

        public var item: Item?

        public var status: [String: Any]

        public var gst: GST?

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case prices

            case bagId = "bag_id"

            case totalShipmentBags = "total_shipment_bags"

            case orderingChannel = "ordering_channel"

            case itemQuantity = "item_quantity"

            case item

            case status

            case gst
        }

        public init(bagId: Int, gst: GST? = nil, item: Item? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.shipmentId = shipmentId

            self.prices = prices

            self.bagId = bagId

            self.totalShipmentBags = totalShipmentBags

            self.orderingChannel = orderingChannel

            self.itemQuantity = itemQuantity

            self.item = item

            self.status = status

            self.gst = gst
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            do {
                item = try container.decode(Item.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode([String: Any].self, forKey: .status)

            do {
                gst = try container.decode(GST.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(gst, forKey: .gst)
        }
    }
}
