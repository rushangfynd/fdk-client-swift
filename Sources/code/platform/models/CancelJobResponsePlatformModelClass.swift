import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CancelJobResponse
         Used By: Discount
     */

    class CancelJobResponse: Codable {
        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case success
        }

        public init(success: Bool) {
            self.success = success
        }

        public func duplicate() -> CancelJobResponse {
            let dict = self.dictionary!
            let copy = CancelJobResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}