

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var isSet: Bool?

        public var uid: String

        public var aSet: [String: Any]?

        public var identifiers: Identifier

        public var dimensions: Dimensions?

        public var returnConfig: ReturnConfig?

        public var childDetails: [String: Any]?

        public var rawMeta: [String: Any]?

        public var id: String

        public var weight: Weight?

        public var sellerIdentifier: String

        public var espModified: [String: Any]?

        public var size: String

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case isSet = "is_set"

            case uid

            case aSet = "a_set"

            case identifiers

            case dimensions

            case returnConfig = "return_config"

            case childDetails = "child_details"

            case rawMeta = "raw_meta"

            case id = "_id"

            case weight

            case sellerIdentifier = "seller_identifier"

            case espModified = "esp_modified"

            case size

            case code
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, dimensions: Dimensions? = nil, espModified: [String: Any]? = nil, identifiers: Identifier, isSet: Bool? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.isSet = isSet

            self.uid = uid

            self.aSet = aSet

            self.identifiers = identifiers

            self.dimensions = dimensions

            self.returnConfig = returnConfig

            self.childDetails = childDetails

            self.rawMeta = rawMeta

            self.id = id

            self.weight = weight

            self.sellerIdentifier = sellerIdentifier

            self.espModified = espModified

            self.size = size

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                aSet = try container.decode([String: Any].self, forKey: .aSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                dimensions = try container.decode(Dimensions.self, forKey: .dimensions)

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
                childDetails = try container.decode([String: Any].self, forKey: .childDetails)

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

            id = try container.decode(String.self, forKey: .id)

            do {
                weight = try container.decode(Weight.self, forKey: .weight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                espModified = try container.decode([String: Any].self, forKey: .espModified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encode(childDetails, forKey: .childDetails)

            try? container.encode(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var isSet: Bool?

        public var uid: String

        public var aSet: [String: Any]?

        public var identifiers: Identifier

        public var dimensions: Dimensions?

        public var returnConfig: ReturnConfig?

        public var childDetails: [String: Any]?

        public var rawMeta: [String: Any]?

        public var id: String

        public var weight: Weight?

        public var sellerIdentifier: String

        public var espModified: [String: Any]?

        public var size: String

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case isSet = "is_set"

            case uid

            case aSet = "a_set"

            case identifiers

            case dimensions

            case returnConfig = "return_config"

            case childDetails = "child_details"

            case rawMeta = "raw_meta"

            case id = "_id"

            case weight

            case sellerIdentifier = "seller_identifier"

            case espModified = "esp_modified"

            case size

            case code
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, dimensions: Dimensions? = nil, espModified: [String: Any]? = nil, identifiers: Identifier, isSet: Bool? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.isSet = isSet

            self.uid = uid

            self.aSet = aSet

            self.identifiers = identifiers

            self.dimensions = dimensions

            self.returnConfig = returnConfig

            self.childDetails = childDetails

            self.rawMeta = rawMeta

            self.id = id

            self.weight = weight

            self.sellerIdentifier = sellerIdentifier

            self.espModified = espModified

            self.size = size

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                aSet = try container.decode([String: Any].self, forKey: .aSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                dimensions = try container.decode(Dimensions.self, forKey: .dimensions)

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
                childDetails = try container.decode([String: Any].self, forKey: .childDetails)

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

            id = try container.decode(String.self, forKey: .id)

            do {
                weight = try container.decode(Weight.self, forKey: .weight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                espModified = try container.decode([String: Any].self, forKey: .espModified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encode(childDetails, forKey: .childDetails)

            try? container.encode(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
