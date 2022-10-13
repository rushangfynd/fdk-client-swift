

import Foundation
public extension PlatformClient {
    /*
         Model: PlatformShipmentStatusInternal
         Used By: OrderManage
     */

    class PlatformShipmentStatusInternal: Codable {
        public var task: Bool?

        public var statuses: Statuses?

        public var forceTransition: Bool?

        public enum CodingKeys: String, CodingKey {
            case task

            case statuses

            case forceTransition = "force_transition"
        }

        public init(forceTransition: Bool? = nil, statuses: Statuses? = nil, task: Bool? = nil) {
            self.task = task

            self.statuses = statuses

            self.forceTransition = forceTransition
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                task = try container.decode(Bool.self, forKey: .task)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                statuses = try container.decode(Statuses.self, forKey: .statuses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forceTransition = try container.decode(Bool.self, forKey: .forceTransition)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(task, forKey: .task)

            try? container.encodeIfPresent(statuses, forKey: .statuses)

            try? container.encodeIfPresent(forceTransition, forKey: .forceTransition)
        }
    }
}