

import Foundation
public extension PlatformClient {
    /*
         Model: BagStateMapper1
         Used By: Order
     */

    class BagStateMapper1: Codable {
        public var isActive: Bool?

        public var notifyCustomer: Bool?

        public var appDisplayName: String?

        public var appFacing: Bool?

        public var appStateName: String?

        public var stateType: String

        public var journeyType: String

        public var bsId: Int

        public var name: String

        public var displayName: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case notifyCustomer = "notify_customer"

            case appDisplayName = "app_display_name"

            case appFacing = "app_facing"

            case appStateName = "app_state_name"

            case stateType = "state_type"

            case journeyType = "journey_type"

            case bsId = "bs_id"

            case name

            case displayName = "display_name"
        }

        public init(appDisplayName: String? = nil, appFacing: Bool? = nil, appStateName: String? = nil, bsId: Int, displayName: String, isActive: Bool? = nil, journeyType: String, name: String, notifyCustomer: Bool? = nil, stateType: String) {
            self.isActive = isActive

            self.notifyCustomer = notifyCustomer

            self.appDisplayName = appDisplayName

            self.appFacing = appFacing

            self.appStateName = appStateName

            self.stateType = stateType

            self.journeyType = journeyType

            self.bsId = bsId

            self.name = name

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                notifyCustomer = try container.decode(Bool.self, forKey: .notifyCustomer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appDisplayName = try container.decode(String.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appFacing = try container.decode(Bool.self, forKey: .appFacing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appStateName = try container.decode(String.self, forKey: .appStateName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stateType = try container.decode(String.self, forKey: .stateType)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            bsId = try container.decode(Int.self, forKey: .bsId)

            name = try container.decode(String.self, forKey: .name)

            displayName = try container.decode(String.self, forKey: .displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(notifyCustomer, forKey: .notifyCustomer)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(appFacing, forKey: .appFacing)

            try? container.encodeIfPresent(appStateName, forKey: .appStateName)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(bsId, forKey: .bsId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
