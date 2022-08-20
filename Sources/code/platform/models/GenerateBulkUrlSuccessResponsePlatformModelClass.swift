

import Foundation
public extension PlatformClient {
    /*
         Model: GenerateBulkUrlSuccessResponse
         Used By: OrderInvoiceEngine
     */

    class GenerateBulkUrlSuccessResponse: Codable {
        public var url: String

        public var uid: String

        public var expiresIn: Double

        public var presignedType: String

        public enum CodingKeys: String, CodingKey {
            case url

            case uid

            case expiresIn = "expires_in"

            case presignedType = "presigned_type"
        }

        public init(expiresIn: Double, presignedType: String, uid: String, url: String) {
            self.url = url

            self.uid = uid

            self.expiresIn = expiresIn

            self.presignedType = presignedType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            url = try container.decode(String.self, forKey: .url)

            uid = try container.decode(String.self, forKey: .uid)

            expiresIn = try container.decode(Double.self, forKey: .expiresIn)

            presignedType = try container.decode(String.self, forKey: .presignedType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(expiresIn, forKey: .expiresIn)

            try? container.encodeIfPresent(presignedType, forKey: .presignedType)
        }
    }
}