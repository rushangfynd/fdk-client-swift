

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var code: String?

        public var dimensions: Dimensions?

        public var identifiers: Identifier

        public var isSet: Bool?

        public var returnConfig: ReturnConfig?

        public var weight: Weight?

        public var rawMeta: [String: Any]?

        public var childDetails: [String: Any]?

        public var uid: String

        public var espModified: [String: Any]?

        public var size: String

        public var aSet: [String: Any]?

        public var sellerIdentifier: String

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case code

            case dimensions

            case identifiers

            case isSet = "is_set"

            case returnConfig = "return_config"

            case weight

            case rawMeta = "raw_meta"

            case childDetails = "child_details"

            case uid

            case espModified = "esp_modified"

            case size

            case aSet = "a_set"

            case sellerIdentifier = "seller_identifier"

            case id = "_id"
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, dimensions: Dimensions? = nil, espModified: [String: Any]? = nil, identifiers: Identifier, isSet: Bool? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.code = code

            self.dimensions = dimensions

            self.identifiers = identifiers

            self.isSet = isSet

            self.returnConfig = returnConfig

            self.weight = weight

            self.rawMeta = rawMeta

            self.childDetails = childDetails

            self.uid = uid

            self.espModified = espModified

            self.size = size

            self.aSet = aSet

            self.sellerIdentifier = sellerIdentifier

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dimensions = try container.decode(Dimensions.self, forKey: .dimensions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                weight = try container.decode(Weight.self, forKey: .weight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childDetails = try container.decode([String: Any].self, forKey: .childDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                espModified = try container.decode([String: Any].self, forKey: .espModified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                aSet = try container.decode([String: Any].self, forKey: .aSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(rawMeta, forKey: .rawMeta)

            try? container.encode(childDetails, forKey: .childDetails)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var code: String?

        public var dimensions: Dimensions?

        public var identifiers: Identifier

        public var isSet: Bool?

        public var returnConfig: ReturnConfig?

        public var weight: Weight?

        public var rawMeta: [String: Any]?

        public var childDetails: [String: Any]?

        public var uid: String

        public var espModified: [String: Any]?

        public var size: String

        public var aSet: [String: Any]?

        public var sellerIdentifier: String

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case code

            case dimensions

            case identifiers

            case isSet = "is_set"

            case returnConfig = "return_config"

            case weight

            case rawMeta = "raw_meta"

            case childDetails = "child_details"

            case uid

            case espModified = "esp_modified"

            case size

            case aSet = "a_set"

            case sellerIdentifier = "seller_identifier"

            case id = "_id"
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, dimensions: Dimensions? = nil, espModified: [String: Any]? = nil, identifiers: Identifier, isSet: Bool? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.code = code

            self.dimensions = dimensions

            self.identifiers = identifiers

            self.isSet = isSet

            self.returnConfig = returnConfig

            self.weight = weight

            self.rawMeta = rawMeta

            self.childDetails = childDetails

            self.uid = uid

            self.espModified = espModified

            self.size = size

            self.aSet = aSet

            self.sellerIdentifier = sellerIdentifier

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dimensions = try container.decode(Dimensions.self, forKey: .dimensions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                weight = try container.decode(Weight.self, forKey: .weight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childDetails = try container.decode([String: Any].self, forKey: .childDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                espModified = try container.decode([String: Any].self, forKey: .espModified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                aSet = try container.decode([String: Any].self, forKey: .aSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(rawMeta, forKey: .rawMeta)

            try? container.encode(childDetails, forKey: .childDetails)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
