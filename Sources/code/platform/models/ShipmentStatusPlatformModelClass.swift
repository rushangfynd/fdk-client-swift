

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentStatus
         Used By: Orders
     */

    class ShipmentStatus: Codable {
        public var status: String

        public var actualStatus: String

        public var title: String

        public var hexCode: String

        public var opsStatus: String

        public enum CodingKeys: String, CodingKey {
            case status

            case actualStatus = "actual_status"

            case title

            case hexCode = "hex_code"

            case opsStatus = "ops_status"
        }

        public init(actualStatus: String, hexCode: String, opsStatus: String, status: String, title: String) {
            self.status = status

            self.actualStatus = actualStatus

            self.title = title

            self.hexCode = hexCode

            self.opsStatus = opsStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            actualStatus = try container.decode(String.self, forKey: .actualStatus)

            title = try container.decode(String.self, forKey: .title)

            hexCode = try container.decode(String.self, forKey: .hexCode)

            opsStatus = try container.decode(String.self, forKey: .opsStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(actualStatus, forKey: .actualStatus)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(hexCode, forKey: .hexCode)

            try? container.encodeIfPresent(opsStatus, forKey: .opsStatus)
        }
    }
}