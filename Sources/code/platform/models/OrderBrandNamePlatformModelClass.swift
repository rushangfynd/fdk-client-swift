

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBrandName
         Used By: Order
     */

    class OrderBrandName: Codable {
        public var company: String

        public var brandName: String

        public var modifiedOn: Int?

        public var createdOn: Int

        public var logo: String

        public var id: Int

        public enum CodingKeys: String, CodingKey {
            case company

            case brandName = "brand_name"

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case logo

            case id
        }

        public init(brandName: String, company: String, createdOn: Int, id: Int, logo: String, modifiedOn: Int? = nil) {
            self.company = company

            self.brandName = brandName

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.logo = logo

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            company = try container.decode(String.self, forKey: .company)

            brandName = try container.decode(String.self, forKey: .brandName)

            do {
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            logo = try container.decode(String.self, forKey: .logo)

            id = try container.decode(Int.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
