

import Foundation
public extension ApplicationClient {
    /*
         Model: FulfillingStore
         Used By: Order
     */
    class FulfillingStore: Codable {
        public var companyName: String?

        public var name: String?

        public var id: Int?

        public var code: String?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case companyName = "company_name"

            case name

            case id

            case code

            case companyId = "company_id"
        }

        public init(code: String? = nil, companyId: Int? = nil, companyName: String? = nil, id: Int? = nil, name: String? = nil) {
            self.companyName = companyName

            self.name = name

            self.id = id

            self.code = code

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyName = try container.decode(String.self, forKey: .companyName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyName, forKey: .companyName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
