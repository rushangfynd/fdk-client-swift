

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBrandName
         Used By: Orders
     */

    class OrderBrandName: Codable {
        public var id: Int

        public var brandName: String

        public var createdOn: Int

        public var logo: String

        public var company: String

        public var modifiedOn: Int?

        public enum CodingKeys: String, CodingKey {
            case id

            case brandName = "brand_name"

            case createdOn = "created_on"

            case logo

            case company

            case modifiedOn = "modified_on"
        }

        public init(brandName: String, company: String, createdOn: Int, id: Int, logo: String, modifiedOn: Int? = nil) {
            self.id = id

            self.brandName = brandName

            self.createdOn = createdOn

            self.logo = logo

            self.company = company

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            brandName = try container.decode(String.self, forKey: .brandName)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            logo = try container.decode(String.self, forKey: .logo)

            company = try container.decode(String.self, forKey: .company)

            do {
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
