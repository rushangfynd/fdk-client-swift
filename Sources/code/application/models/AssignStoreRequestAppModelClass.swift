

import Foundation
public extension ApplicationClient {
    /*
         Model: AssignStoreRequest
         Used By: Logistic
     */
    class AssignStoreRequest: Codable {
        public var toPincode: String

        public var items: [String: Any]

        public var applicationConfig: [String: Any]

        public var articles: [[String: Any]]

        public var pageNo: Int

        public var pageSize: Int

        public var customerDetails: [String: Any]

        public var extensionConfig: [String: Any]

        public var identifier: String

        public enum CodingKeys: String, CodingKey {
            case toPincode = "to_pincode"

            case items

            case applicationConfig = "application_config"

            case articles

            case pageNo = "page_no"

            case pageSize = "page_size"

            case customerDetails = "customer_details"

            case extensionConfig = "extension_config"

            case identifier
        }

        public init(applicationConfig: [String: Any], articles: [[String: Any]], customerDetails: [String: Any], extensionConfig: [String: Any], identifier: String, items: [String: Any], pageNo: Int, pageSize: Int, toPincode: String) {
            self.toPincode = toPincode

            self.items = items

            self.applicationConfig = applicationConfig

            self.articles = articles

            self.pageNo = pageNo

            self.pageSize = pageSize

            self.customerDetails = customerDetails

            self.extensionConfig = extensionConfig

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            items = try container.decode([String: Any].self, forKey: .items)

            applicationConfig = try container.decode([String: Any].self, forKey: .applicationConfig)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            pageNo = try container.decode(Int.self, forKey: .pageNo)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)

            extensionConfig = try container.decode([String: Any].self, forKey: .extensionConfig)

            identifier = try container.decode(String.self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(applicationConfig, forKey: .applicationConfig)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)

            try? container.encodeIfPresent(extensionConfig, forKey: .extensionConfig)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}