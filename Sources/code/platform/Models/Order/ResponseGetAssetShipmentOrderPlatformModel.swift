

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ResponseGetAssetShipment
         Used By: Order
     */

    class ResponseGetAssetShipment: Codable {
        public var result: [AssetByShipment]

        public var success: Bool

        public var presignedType: String

        public enum CodingKeys: String, CodingKey {
            case result

            case success

            case presignedType = "presigned_type"
        }

        public init(presignedType: String, result: [AssetByShipment], success: Bool) {
            self.result = result

            self.success = success

            self.presignedType = presignedType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            result = try container.decode([AssetByShipment].self, forKey: .result)

            success = try container.decode(Bool.self, forKey: .success)

            presignedType = try container.decode(String.self, forKey: .presignedType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(presignedType, forKey: .presignedType)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ResponseGetAssetShipment
         Used By: Order
     */

    class ResponseGetAssetShipment: Codable {
        public var result: [AssetByShipment]

        public var success: Bool

        public var presignedType: String

        public enum CodingKeys: String, CodingKey {
            case result

            case success

            case presignedType = "presigned_type"
        }

        public init(presignedType: String, result: [AssetByShipment], success: Bool) {
            self.result = result

            self.success = success

            self.presignedType = presignedType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            result = try container.decode([AssetByShipment].self, forKey: .result)

            success = try container.decode(Bool.self, forKey: .success)

            presignedType = try container.decode(String.self, forKey: .presignedType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(presignedType, forKey: .presignedType)
        }
    }
}
