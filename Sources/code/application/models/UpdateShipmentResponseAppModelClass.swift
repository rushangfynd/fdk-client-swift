

import Foundation
public extension ApplicationClient {
    /*
         Model: UpdateShipmentResponse
         Used By: Order
     */
    class UpdateShipmentResponse: Codable {
        public var finalState: [String: Any]?

        public var status: Bool

        public var message: [String]

        public enum CodingKeys: String, CodingKey {
            case finalState = "final_state"

            case status

            case message
        }

        public init(finalState: [String: Any]? = nil, message: [String], status: Bool) {
            self.finalState = finalState

            self.status = status

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                finalState = try container.decode([String: Any].self, forKey: .finalState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Bool.self, forKey: .status)

            message = try container.decode([String].self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(finalState, forKey: .finalState)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}