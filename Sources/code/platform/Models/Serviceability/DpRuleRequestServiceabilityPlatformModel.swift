

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpRuleRequest
         Used By: Serviceability
     */

    class DpRuleRequest: Codable {
        public var conditions: [[String: Any]]

        public var dpIds: [String: DpIds]

        public var isActive: Bool?

        public var name: String

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case conditions

            case dpIds = "dp_ids"

            case isActive = "is_active"

            case name

            case companyId = "company_id"
        }

        public init(companyId: Int? = nil, conditions: [[String: Any]], dpIds: [String: DpIds], isActive: Bool? = nil, name: String) {
            self.conditions = conditions

            self.dpIds = dpIds

            self.isActive = isActive

            self.name = name

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            conditions = try container.decode([[String: Any]].self, forKey: .conditions)

            dpIds = try container.decode([String: DpIds].self, forKey: .dpIds)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(conditions, forKey: .conditions)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpRuleRequest
         Used By: Serviceability
     */

    class DpRuleRequest: Codable {
        public var conditions: [[String: Any]]

        public var dpIds: [String: DpIds]

        public var isActive: Bool?

        public var name: String

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case conditions

            case dpIds = "dp_ids"

            case isActive = "is_active"

            case name

            case companyId = "company_id"
        }

        public init(companyId: Int? = nil, conditions: [[String: Any]], dpIds: [String: DpIds], isActive: Bool? = nil, name: String) {
            self.conditions = conditions

            self.dpIds = dpIds

            self.isActive = isActive

            self.name = name

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            conditions = try container.decode([[String: Any]].self, forKey: .conditions)

            dpIds = try container.decode([String: DpIds].self, forKey: .dpIds)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(conditions, forKey: .conditions)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}