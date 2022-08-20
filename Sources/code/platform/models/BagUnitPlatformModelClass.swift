

import Foundation
public extension PlatformClient {
    /*
         Model: BagUnit
         Used By: Orders
     */

    class BagUnit: Codable {
        public var gst: GST?

        public var bagId: Int

        public var prices: Prices?

        public var status: [String: Any]

        public var orderingChannel: String

        public var itemQuantity: Int

        public var shipmentId: String

        public var totalShipmentBags: Int

        public var item: Item?

        public enum CodingKeys: String, CodingKey {
            case gst

            case bagId = "bag_id"

            case prices

            case status

            case orderingChannel = "ordering_channel"

            case itemQuantity = "item_quantity"

            case shipmentId = "shipment_id"

            case totalShipmentBags = "total_shipment_bags"

            case item
        }

        public init(bagId: Int, gst: GST? = nil, item: Item? = nil, itemQuantity: Int, orderingChannel: String, prices: Prices? = nil, shipmentId: String, status: [String: Any], totalShipmentBags: Int) {
            self.gst = gst

            self.bagId = bagId

            self.prices = prices

            self.status = status

            self.orderingChannel = orderingChannel

            self.itemQuantity = itemQuantity

            self.shipmentId = shipmentId

            self.totalShipmentBags = totalShipmentBags

            self.item = item
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gst = try container.decode(GST.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode([String: Any].self, forKey: .status)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            itemQuantity = try container.decode(Int.self, forKey: .itemQuantity)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            do {
                item = try container.decode(Item.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(itemQuantity, forKey: .itemQuantity)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(item, forKey: .item)
        }
    }
}