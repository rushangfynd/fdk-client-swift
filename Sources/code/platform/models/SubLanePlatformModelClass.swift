

import Foundation
public extension PlatformClient {
    /*
         Model: SubLane
         Used By: Orders
     */

    class SubLane: Codable {
        public var totalShipments: Int

        public var nextState: [String]?

        public var currentState: [String]?

        public var text: String

        public var index: Int

        public var value: String

        public enum CodingKeys: String, CodingKey {
            case totalShipments = "total_shipments"

            case nextState = "next_state"

            case currentState = "current_state"

            case text

            case index

            case value
        }

        public init(currentState: [String]? = nil, index: Int, nextState: [String]? = nil, text: String, totalShipments: Int, value: String) {
            self.totalShipments = totalShipments

            self.nextState = nextState

            self.currentState = currentState

            self.text = text

            self.index = index

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalShipments = try container.decode(Int.self, forKey: .totalShipments)

            do {
                nextState = try container.decode([String].self, forKey: .nextState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currentState = try container.decode([String].self, forKey: .currentState)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            text = try container.decode(String.self, forKey: .text)

            index = try container.decode(Int.self, forKey: .index)

            value = try container.decode(String.self, forKey: .value)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalShipments, forKey: .totalShipments)

            try? container.encodeIfPresent(nextState, forKey: .nextState)

            try? container.encodeIfPresent(currentState, forKey: .currentState)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}
