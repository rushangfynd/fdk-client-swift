

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentStatusData
         Used By: Order
     */

    class ShipmentStatusData: Codable {
        public var status: String?

        public var shipmentId: String?

        public var id: Int?

        public var createdAt: String?

        public var bagList: [Int]?

        public enum CodingKeys: String, CodingKey {
            case status

            case shipmentId = "shipment_id"

            case id

            case createdAt = "created_at"

            case bagList = "bag_list"
        }

        public init(bagList: [Int]? = nil, createdAt: String? = nil, id: Int? = nil, shipmentId: String? = nil, status: String? = nil) {
            self.status = status

            self.shipmentId = shipmentId

            self.id = id

            self.createdAt = createdAt

            self.bagList = bagList
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

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
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagList = try container.decode([Int].self, forKey: .bagList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(bagList, forKey: .bagList)
        }
    }
}