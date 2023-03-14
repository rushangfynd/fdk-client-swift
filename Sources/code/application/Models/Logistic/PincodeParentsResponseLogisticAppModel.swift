

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: PincodeParentsResponse
         Used By: Logistic
     */
    class PincodeParentsResponse: Codable {
        public var name: String?

        public var uid: String?

        public var displayName: String?

        public var subType: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case uid

            case displayName = "display_name"

            case subType = "sub_type"
        }

        public init(displayName: String? = nil, name: String? = nil, subType: String? = nil, uid: String? = nil) {
            self.name = name

            self.uid = uid

            self.displayName = displayName

            self.subType = subType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subType = try container.decode(String.self, forKey: .subType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(subType, forKey: .subType)
        }
    }
}