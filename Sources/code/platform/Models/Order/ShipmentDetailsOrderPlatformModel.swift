

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentDetails
         Used By: Order
     */

    class ShipmentDetails: Codable {
        public var fulfillmentId: Int

        public var boxType: String?

        public var meta: [String: Any]?

        public var dpId: Int?

        public var articles: [ArticleDetails1]

        public var shipments: Int

        public var affiliateShipmentId: String

        public enum CodingKeys: String, CodingKey {
            case fulfillmentId = "fulfillment_id"

            case boxType = "box_type"

            case meta

            case dpId = "dp_id"

            case articles

            case shipments

            case affiliateShipmentId = "affiliate_shipment_id"
        }

        public init(affiliateShipmentId: String, articles: [ArticleDetails1], boxType: String? = nil, dpId: Int? = nil, fulfillmentId: Int, meta: [String: Any]? = nil, shipments: Int) {
            self.fulfillmentId = fulfillmentId

            self.boxType = boxType

            self.meta = meta

            self.dpId = dpId

            self.articles = articles

            self.shipments = shipments

            self.affiliateShipmentId = affiliateShipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpId = try container.decode(Int.self, forKey: .dpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)

            shipments = try container.decode(Int.self, forKey: .shipments)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentDetails
         Used By: Order
     */

    class ShipmentDetails: Codable {
        public var fulfillmentId: Int

        public var boxType: String?

        public var meta: [String: Any]?

        public var dpId: Int?

        public var articles: [ArticleDetails1]

        public var shipments: Int

        public var affiliateShipmentId: String

        public enum CodingKeys: String, CodingKey {
            case fulfillmentId = "fulfillment_id"

            case boxType = "box_type"

            case meta

            case dpId = "dp_id"

            case articles

            case shipments

            case affiliateShipmentId = "affiliate_shipment_id"
        }

        public init(affiliateShipmentId: String, articles: [ArticleDetails1], boxType: String? = nil, dpId: Int? = nil, fulfillmentId: Int, meta: [String: Any]? = nil, shipments: Int) {
            self.fulfillmentId = fulfillmentId

            self.boxType = boxType

            self.meta = meta

            self.dpId = dpId

            self.articles = articles

            self.shipments = shipments

            self.affiliateShipmentId = affiliateShipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)

            do {
                boxType = try container.decode(String.self, forKey: .boxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpId = try container.decode(Int.self, forKey: .dpId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articles = try container.decode([ArticleDetails1].self, forKey: .articles)

            shipments = try container.decode(Int.self, forKey: .shipments)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)

            try? container.encode(boxType, forKey: .boxType)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(dpId, forKey: .dpId)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)
        }
    }
}
