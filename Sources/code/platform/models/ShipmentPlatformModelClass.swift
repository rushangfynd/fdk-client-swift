

import Foundation
public extension PlatformClient {
    /*
         Model: Shipment
         Used By: Order
     */

    class Shipment: Codable {
        public var externalShipmentId: Double?

        public var meta: [String: Any]?

        public var priority: Int?

        public var locationId: Int

        public var lineItems: [LineItem]

        public var processingDates: ProcessingDates?

        public enum CodingKeys: String, CodingKey {
            case externalShipmentId = "external_shipment_id"

            case meta

            case priority

            case locationId = "location_id"

            case lineItems = "line_items"

            case processingDates = "processing_dates"
        }

        public init(externalShipmentId: Double? = nil, lineItems: [LineItem], locationId: Int, meta: [String: Any]? = nil, priority: Int? = nil, processingDates: ProcessingDates? = nil) {
            self.externalShipmentId = externalShipmentId

            self.meta = meta

            self.priority = priority

            self.locationId = locationId

            self.lineItems = lineItems

            self.processingDates = processingDates
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                externalShipmentId = try container.decode(Double.self, forKey: .externalShipmentId)

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
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationId = try container.decode(Int.self, forKey: .locationId)

            lineItems = try container.decode([LineItem].self, forKey: .lineItems)

            do {
                processingDates = try container.decode(ProcessingDates.self, forKey: .processingDates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(externalShipmentId, forKey: .externalShipmentId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(locationId, forKey: .locationId)

            try? container.encodeIfPresent(lineItems, forKey: .lineItems)

            try? container.encodeIfPresent(processingDates, forKey: .processingDates)
        }
    }
}
