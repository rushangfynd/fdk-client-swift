

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: OwnerAppItemResponse
         Used By: Catalog
     */

    class OwnerAppItemResponse: Codable {
        public var moq: MOQData?

        public var seo: SEOData?

        public var isGift: Bool?

        public var isCod: Bool?

        public var altText: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case moq

            case seo

            case isGift = "is_gift"

            case isCod = "is_cod"

            case altText = "alt_text"
        }

        public init(altText: [String: Any]? = nil, isCod: Bool? = nil, isGift: Bool? = nil, moq: MOQData? = nil, seo: SEOData? = nil) {
            self.moq = moq

            self.seo = seo

            self.isGift = isGift

            self.isCod = isCod

            self.altText = altText
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                moq = try container.decode(MOQData.self, forKey: .moq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seo = try container.decode(SEOData.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isGift = try container.decode(Bool.self, forKey: .isGift)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isCod = try container.decode(Bool.self, forKey: .isCod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                altText = try container.decode([String: Any].self, forKey: .altText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(isGift, forKey: .isGift)

            try? container.encodeIfPresent(isCod, forKey: .isCod)

            try? container.encodeIfPresent(altText, forKey: .altText)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: OwnerAppItemResponse
         Used By: Catalog
     */

    class OwnerAppItemResponse: Codable {
        public var moq: MOQData?

        public var seo: SEOData?

        public var isGift: Bool?

        public var isCod: Bool?

        public var altText: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case moq

            case seo

            case isGift = "is_gift"

            case isCod = "is_cod"

            case altText = "alt_text"
        }

        public init(altText: [String: Any]? = nil, isCod: Bool? = nil, isGift: Bool? = nil, moq: MOQData? = nil, seo: SEOData? = nil) {
            self.moq = moq

            self.seo = seo

            self.isGift = isGift

            self.isCod = isCod

            self.altText = altText
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                moq = try container.decode(MOQData.self, forKey: .moq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seo = try container.decode(SEOData.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isGift = try container.decode(Bool.self, forKey: .isGift)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isCod = try container.decode(Bool.self, forKey: .isCod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                altText = try container.decode([String: Any].self, forKey: .altText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(isGift, forKey: .isGift)

            try? container.encodeIfPresent(isCod, forKey: .isCod)

            try? container.encodeIfPresent(altText, forKey: .altText)
        }
    }
}