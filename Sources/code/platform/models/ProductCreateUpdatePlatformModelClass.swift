

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var description: String?

        public var sizeGuide: String?

        public var name: String

        public var trader: [Trader]

        public var categorySlug: String

        public var departments: [Int]

        public var media: [Media1]?

        public var brandUid: Int

        public var taxIdentifier: TaxIdentifier

        public var requester: String?

        public var productPublish: ProductPublish?

        public var variants: [String: Any]?

        public var isDependent: Bool?

        public var itemType: String

        public var countryOfOrigin: String

        public var multiSize: Bool?

        public var currency: String

        public var slug: String

        public var moq: OrderQuantity?

        public var action: String?

        public var isImageLessProduct: Bool?

        public var companyId: Int

        public var highlights: [String]?

        public var customOrder: CustomOrder?

        public var changeRequestId: String?

        public var customJson: [String: Any]?

        public var uid: Int?

        public var isActive: Bool?

        public var noOfBoxes: Int?

        public var isSet: Bool?

        public var bulkJobId: String?

        public var templateTag: String

        public var teaserTag: TeaserTag?

        public var shortDescription: String?

        public var tags: [String]?

        public var itemCode: String

        public var productGroupTag: [String]?

        public var returnConfig: ReturnConfig

        public enum CodingKeys: String, CodingKey {
            case description

            case sizeGuide = "size_guide"

            case name

            case trader

            case categorySlug = "category_slug"

            case departments

            case media

            case brandUid = "brand_uid"

            case taxIdentifier = "tax_identifier"

            case requester

            case productPublish = "product_publish"

            case variants

            case isDependent = "is_dependent"

            case itemType = "item_type"

            case countryOfOrigin = "country_of_origin"

            case multiSize = "multi_size"

            case currency

            case slug

            case moq

            case action

            case isImageLessProduct = "is_image_less_product"

            case companyId = "company_id"

            case highlights

            case customOrder = "custom_order"

            case changeRequestId = "change_request_id"

            case customJson = "_custom_json"

            case uid

            case isActive = "is_active"

            case noOfBoxes = "no_of_boxes"

            case isSet = "is_set"

            case bulkJobId = "bulk_job_id"

            case templateTag = "template_tag"

            case teaserTag = "teaser_tag"

            case shortDescription = "short_description"

            case tags

            case itemCode = "item_code"

            case productGroupTag = "product_group_tag"

            case returnConfig = "return_config"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: String? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.description = description

            self.sizeGuide = sizeGuide

            self.name = name

            self.trader = trader

            self.categorySlug = categorySlug

            self.departments = departments

            self.media = media

            self.brandUid = brandUid

            self.taxIdentifier = taxIdentifier

            self.requester = requester

            self.productPublish = productPublish

            self.variants = variants

            self.isDependent = isDependent

            self.itemType = itemType

            self.countryOfOrigin = countryOfOrigin

            self.multiSize = multiSize

            self.currency = currency

            self.slug = slug

            self.moq = moq

            self.action = action

            self.isImageLessProduct = isImageLessProduct

            self.companyId = companyId

            self.highlights = highlights

            self.customOrder = customOrder

            self.changeRequestId = changeRequestId

            self.customJson = customJson

            self.uid = uid

            self.isActive = isActive

            self.noOfBoxes = noOfBoxes

            self.isSet = isSet

            self.bulkJobId = bulkJobId

            self.templateTag = templateTag

            self.teaserTag = teaserTag

            self.shortDescription = shortDescription

            self.tags = tags

            self.itemCode = itemCode

            self.productGroupTag = productGroupTag

            self.returnConfig = returnConfig
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            trader = try container.decode([Trader].self, forKey: .trader)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            do {
                requester = try container.decode(String.self, forKey: .requester)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemType = try container.decode(String.self, forKey: .itemType)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                moq = try container.decode(OrderQuantity.self, forKey: .moq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                changeRequestId = try container.decode(String.self, forKey: .changeRequestId)

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
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
        }
    }
}
