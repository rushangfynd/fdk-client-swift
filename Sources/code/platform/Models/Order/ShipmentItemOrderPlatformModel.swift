

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentItem
         Used By: Order
     */

    class ShipmentItem: Codable {
        public var createdAt: String

        public var sla: [String: Any]?

        public var paymentModeInfo: PaymentModeInfo?

        public var fulfillingCentre: String

        public var shipmentCreatedAt: String

        public var totalShipmentsInOrder: Int

        public var id: String

        public var paymentMethods: [String: Any]?

        public var totalBagsCount: Int

        public var channel: [String: Any]?

        public var shipmentStatus: ShipmentStatus?

        public var shipmentId: String?

        public var application: [String: Any]?

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public var bags: [BagUnit]?

        public var user: UserDataInfo?

        public var prices: Prices?

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case sla

            case paymentModeInfo = "payment_mode_info"

            case fulfillingCentre = "fulfilling_centre"

            case shipmentCreatedAt = "shipment_created_at"

            case totalShipmentsInOrder = "total_shipments_in_order"

            case id

            case paymentMethods = "payment_methods"

            case totalBagsCount = "total_bags_count"

            case channel

            case shipmentStatus = "shipment_status"

            case shipmentId = "shipment_id"

            case application

            case fulfillingStore = "fulfilling_store"

            case bags

            case user

            case prices
        }

        public init(application: [String: Any]? = nil, bags: [BagUnit]? = nil, channel: [String: Any]? = nil, createdAt: String, fulfillingCentre: String, fulfillingStore: ShipmentItemFulFillingStore? = nil, id: String, paymentMethods: [String: Any]? = nil, paymentModeInfo: PaymentModeInfo? = nil, prices: Prices? = nil, shipmentCreatedAt: String, shipmentId: String? = nil, shipmentStatus: ShipmentStatus? = nil, sla: [String: Any]? = nil, totalBagsCount: Int, totalShipmentsInOrder: Int, user: UserDataInfo? = nil) {
            self.createdAt = createdAt

            self.sla = sla

            self.paymentModeInfo = paymentModeInfo

            self.fulfillingCentre = fulfillingCentre

            self.shipmentCreatedAt = shipmentCreatedAt

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.id = id

            self.paymentMethods = paymentMethods

            self.totalBagsCount = totalBagsCount

            self.channel = channel

            self.shipmentStatus = shipmentStatus

            self.shipmentId = shipmentId

            self.application = application

            self.fulfillingStore = fulfillingStore

            self.bags = bags

            self.user = user

            self.prices = prices
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                sla = try container.decode([String: Any].self, forKey: .sla)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentModeInfo = try container.decode(PaymentModeInfo.self, forKey: .paymentModeInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillingCentre = try container.decode(String.self, forKey: .fulfillingCentre)

            shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            id = try container.decode(String.self, forKey: .id)

            do {
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalBagsCount = try container.decode(Int.self, forKey: .totalBagsCount)

            do {
                channel = try container.decode([String: Any].self, forKey: .channel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentStatus = try container.decode(ShipmentStatus.self, forKey: .shipmentStatus)

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
                application = try container.decode([String: Any].self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfillingStore = try container.decode(ShipmentItemFulFillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bags = try container.decode([BagUnit].self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(UserDataInfo.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(sla, forKey: .sla)

            try? container.encodeIfPresent(paymentModeInfo, forKey: .paymentModeInfo)

            try? container.encodeIfPresent(fulfillingCentre, forKey: .fulfillingCentre)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(totalBagsCount, forKey: .totalBagsCount)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(prices, forKey: .prices)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentItem
         Used By: Order
     */

    class ShipmentItem: Codable {
        public var createdAt: String

        public var sla: [String: Any]?

        public var paymentModeInfo: PaymentModeInfo?

        public var fulfillingCentre: String

        public var shipmentCreatedAt: String

        public var totalShipmentsInOrder: Int

        public var id: String

        public var paymentMethods: [String: Any]?

        public var totalBagsCount: Int

        public var channel: [String: Any]?

        public var shipmentStatus: ShipmentStatus?

        public var shipmentId: String?

        public var application: [String: Any]?

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public var bags: [BagUnit]?

        public var user: UserDataInfo?

        public var prices: Prices?

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case sla

            case paymentModeInfo = "payment_mode_info"

            case fulfillingCentre = "fulfilling_centre"

            case shipmentCreatedAt = "shipment_created_at"

            case totalShipmentsInOrder = "total_shipments_in_order"

            case id

            case paymentMethods = "payment_methods"

            case totalBagsCount = "total_bags_count"

            case channel

            case shipmentStatus = "shipment_status"

            case shipmentId = "shipment_id"

            case application

            case fulfillingStore = "fulfilling_store"

            case bags

            case user

            case prices
        }

        public init(application: [String: Any]? = nil, bags: [BagUnit]? = nil, channel: [String: Any]? = nil, createdAt: String, fulfillingCentre: String, fulfillingStore: ShipmentItemFulFillingStore? = nil, id: String, paymentMethods: [String: Any]? = nil, paymentModeInfo: PaymentModeInfo? = nil, prices: Prices? = nil, shipmentCreatedAt: String, shipmentId: String? = nil, shipmentStatus: ShipmentStatus? = nil, sla: [String: Any]? = nil, totalBagsCount: Int, totalShipmentsInOrder: Int, user: UserDataInfo? = nil) {
            self.createdAt = createdAt

            self.sla = sla

            self.paymentModeInfo = paymentModeInfo

            self.fulfillingCentre = fulfillingCentre

            self.shipmentCreatedAt = shipmentCreatedAt

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.id = id

            self.paymentMethods = paymentMethods

            self.totalBagsCount = totalBagsCount

            self.channel = channel

            self.shipmentStatus = shipmentStatus

            self.shipmentId = shipmentId

            self.application = application

            self.fulfillingStore = fulfillingStore

            self.bags = bags

            self.user = user

            self.prices = prices
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                sla = try container.decode([String: Any].self, forKey: .sla)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentModeInfo = try container.decode(PaymentModeInfo.self, forKey: .paymentModeInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillingCentre = try container.decode(String.self, forKey: .fulfillingCentre)

            shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            id = try container.decode(String.self, forKey: .id)

            do {
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalBagsCount = try container.decode(Int.self, forKey: .totalBagsCount)

            do {
                channel = try container.decode([String: Any].self, forKey: .channel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentStatus = try container.decode(ShipmentStatus.self, forKey: .shipmentStatus)

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
                application = try container.decode([String: Any].self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfillingStore = try container.decode(ShipmentItemFulFillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bags = try container.decode([BagUnit].self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(UserDataInfo.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(sla, forKey: .sla)

            try? container.encodeIfPresent(paymentModeInfo, forKey: .paymentModeInfo)

            try? container.encodeIfPresent(fulfillingCentre, forKey: .fulfillingCentre)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(totalBagsCount, forKey: .totalBagsCount)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(prices, forKey: .prices)
        }
    }
}
