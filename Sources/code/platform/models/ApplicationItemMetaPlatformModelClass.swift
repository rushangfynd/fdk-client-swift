

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationItemMeta
         Used By: Catalog
     */

    class ApplicationItemMeta: Codable {
        public var altText: [String: Any]?

        public var isGift: Bool?

        public var isCod: Bool?

        public var customJson: [String: Any]?

        public var customMeta: [MetaFields]?

        public var seo: ApplicationItemSEO?

        public var moq: ApplicationItemMOQ?

        public enum CodingKeys: String, CodingKey {
            case altText = "alt_text"

            case isGift = "is_gift"

            case isCod = "is_cod"

            case customJson = "_custom_json"

            case customMeta = "_custom_meta"

            case seo

            case moq
        }

        public init(altText: [String: Any]? = nil, isCod: Bool? = nil, isGift: Bool? = nil, moq: ApplicationItemMOQ? = nil, seo: ApplicationItemSEO? = nil, customJson: [String: Any]? = nil, customMeta: [MetaFields]? = nil) {
            self.altText = altText

            self.isGift = isGift

            self.isCod = isCod

            self.customJson = customJson

            self.customMeta = customMeta

            self.seo = seo

            self.moq = moq
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                altText = try container.decode([String: Any].self, forKey: .altText)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customMeta = try container.decode([MetaFields].self, forKey: .customMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seo = try container.decode(ApplicationItemSEO.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                moq = try container.decode(ApplicationItemMOQ.self, forKey: .moq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(altText, forKey: .altText)

            try? container.encodeIfPresent(isGift, forKey: .isGift)

            try? container.encodeIfPresent(isCod, forKey: .isCod)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(moq, forKey: .moq)
        }
    }
}
