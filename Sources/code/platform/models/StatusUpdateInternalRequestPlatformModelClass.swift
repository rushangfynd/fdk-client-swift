

import Foundation
public extension PlatformClient {
    /*
         Model: StatusUpdateInternalRequest
         Used By: Order
     */

    class StatusUpdateInternalRequest: Codable {
        public var unlockBeforeTransition: Bool?

        public var forceTransition: Bool?

        public var task: Bool?

        public var statues: [StatuesRequest]?

        public var lockAfterTransition: Bool?

        public enum CodingKeys: String, CodingKey {
            case unlockBeforeTransition = "unlock_before_transition"

            case forceTransition = "force_transition"

            case task

            case statues

            case lockAfterTransition = "lock_after_transition"
        }

        public init(forceTransition: Bool? = nil, lockAfterTransition: Bool? = nil, statues: [StatuesRequest]? = nil, task: Bool? = nil, unlockBeforeTransition: Bool? = nil) {
            self.unlockBeforeTransition = unlockBeforeTransition

            self.forceTransition = forceTransition

            self.task = task

            self.statues = statues

            self.lockAfterTransition = lockAfterTransition
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                unlockBeforeTransition = try container.decode(Bool.self, forKey: .unlockBeforeTransition)

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

            do {
                task = try container.decode(Bool.self, forKey: .task)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                statues = try container.decode([StatuesRequest].self, forKey: .statues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockAfterTransition = try container.decode(Bool.self, forKey: .lockAfterTransition)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unlockBeforeTransition, forKey: .unlockBeforeTransition)

            try? container.encodeIfPresent(forceTransition, forKey: .forceTransition)

            try? container.encodeIfPresent(task, forKey: .task)

            try? container.encodeIfPresent(statues, forKey: .statues)

            try? container.encodeIfPresent(lockAfterTransition, forKey: .lockAfterTransition)
        }
    }
}
