

import Foundation
public extension PlatformClient {
    /*
         Model: TrackingList
         Used By: Orders
     */

    class TrackingList: Codable {
        public var isPassed: Bool?

        public var isCurrent: Bool?

        public var time: String?

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case isPassed = "is_passed"

            case isCurrent = "is_current"

            case time

            case status
        }

        public init(isCurrent: Bool? = nil, isPassed: Bool? = nil, status: String, time: String? = nil) {
            self.isPassed = isPassed

            self.isCurrent = isCurrent

            self.time = time

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

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isPassed, forKey: .isPassed)

            try? container.encodeIfPresent(isCurrent, forKey: .isCurrent)

            try? container.encodeIfPresent(time, forKey: .time)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}