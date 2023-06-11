

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: TrackingDetails
         Used By: Order
     */
    class TrackingDetails: Codable {
        public var isPassed: Bool?

        public var trackingDetails: [NestedTrackingDetails]?

        public var isCurrent: Bool?

        public var time: String?

        public var value: String?

        public var status: String?

        public enum CodingKeys: String, CodingKey {
            case isPassed = "is_passed"

            case trackingDetails = "tracking_details"

            case isCurrent = "is_current"

            case time

            case value

            case status
        }

        public init(isCurrent: Bool? = nil, isPassed: Bool? = nil, status: String? = nil, time: String? = nil, trackingDetails: [NestedTrackingDetails]? = nil, value: String? = nil) {
            self.isPassed = isPassed

            self.trackingDetails = trackingDetails

            self.isCurrent = isCurrent

            self.time = time

            self.value = value

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isPassed = try container.decode(Bool.self, forKey: .isPassed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackingDetails = try container.decode([NestedTrackingDetails].self, forKey: .trackingDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isCurrent = try container.decode(Bool.self, forKey: .isCurrent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                time = try container.decode(String.self, forKey: .time)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isPassed, forKey: .isPassed)

            try? container.encodeIfPresent(trackingDetails, forKey: .trackingDetails)

            try? container.encodeIfPresent(isCurrent, forKey: .isCurrent)

            try? container.encodeIfPresent(time, forKey: .time)

            try? container.encode(value, forKey: .value)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
