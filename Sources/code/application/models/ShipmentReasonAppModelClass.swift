

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentReason
         Used By: Order
     */
    class ShipmentReason: Codable {
        public var feedbackType: String?

        public var reasonId: Int?

        public var reasonText: String?

        public var showTextArea: Bool?

        public var priority: Int?

        public var flow: String?

        public enum CodingKeys: String, CodingKey {
            case feedbackType = "feedback_type"

            case reasonId = "reason_id"

            case reasonText = "reason_text"

            case showTextArea = "show_text_area"

            case priority

            case flow
        }

        public init(feedbackType: String? = nil, flow: String? = nil, priority: Int? = nil, reasonId: Int? = nil, reasonText: String? = nil, showTextArea: Bool? = nil) {
            self.feedbackType = feedbackType

            self.reasonId = reasonId

            self.reasonText = reasonText

            self.showTextArea = showTextArea

            self.priority = priority

            self.flow = flow
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                feedbackType = try container.decode(String.self, forKey: .feedbackType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasonId = try container.decode(Int.self, forKey: .reasonId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasonText = try container.decode(String.self, forKey: .reasonText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                showTextArea = try container.decode(Bool.self, forKey: .showTextArea)

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

            do {
                flow = try container.decode(String.self, forKey: .flow)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(feedbackType, forKey: .feedbackType)

            try? container.encodeIfPresent(reasonId, forKey: .reasonId)

            try? container.encodeIfPresent(reasonText, forKey: .reasonText)

            try? container.encodeIfPresent(showTextArea, forKey: .showTextArea)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(flow, forKey: .flow)
        }
    }
}