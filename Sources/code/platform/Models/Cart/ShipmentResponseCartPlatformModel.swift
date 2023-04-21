

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: ShipmentResponse
         Used By: Cart
     */

    class ShipmentResponse: Codable {
        public var dpOptions: [String: Any]?

        public var dpId: String?

        public var fulfillmentId: Int?

        public var shipmentType: String?

        public var promise: ShipmentPromise?

        public var boxType: String?

        public var fulfillmentType: String?

        public var orderType: String?

        public var items: [CartProductInfo]?

        public var shipments: Int?

        public enum CodingKeys: String, CodingKey {
            case dpOptions = "dp_options"

            case dpId = "dp_id"

            case fulfillmentId = "fulfillment_id"

            case shipmentType = "shipment_type"

            case promise

            case boxType = "box_type"

            case fulfillmentType = "fulfillment_type"

            case orderType = "order_type"

            case items

            case shipments
        }

        public init(boxType: String? = nil, dpId: String? = nil, dpOptions: [String: Any]? = nil, fulfillmentId: Int? = nil, fulfillmentType: String? = nil, items: [CartProductInfo]? = nil, orderType: String? = nil, promise: ShipmentPromise? = nil, shipments: Int? = nil, shipmentType: String? = nil) {
            self.dpOptions = dpOptions

            self.dpId = dpId

            self.fulfillmentId = fulfillmentId

            self.shipmentType = shipmentType

            self.promise = promise

            self.boxType = boxType

            self.fulfillmentType = fulfillmentType

            self.orderType = orderType

            self.items = items

            self.shipments = shipments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dpOptions = try container.decode([String: Any].self, forKey: .dpOptions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpId = try container.decode(String.self, forKey: .dpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentType = try container.decode(String.self, forKey: .shipmentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promise = try container.decode(ShipmentPromise.self, forKey: .promise)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderType = try container.decode(String.self, forKey: .orderType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([CartProductInfo].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode(Int.self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(dpOptions, forKey: .dpOptions)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)

            try? container.encodeIfPresent(promise, forKey: .promise)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(shipments, forKey: .shipments)
        }
    }
}
