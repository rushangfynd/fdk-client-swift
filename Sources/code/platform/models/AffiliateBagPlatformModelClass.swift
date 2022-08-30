

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var modifiedOn: String

        public var discount: Double

        public var quantity: Int

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var id: String

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var avlQty: Int

        public var unitPrice: Double

        public var priceMarked: Double

        public var amountPaid: Double

        public var affiliateMeta: [String: Any]

        public var transferPrice: Int

        public var companyId: Int

        public var sellerIdentifier: String

        public var sku: String

        public var itemSize: String

        public var fyndStoreId: String

        public var priceEffective: Double

        public var itemId: Int

        public var deliveryCharge: Double

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case discount

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case identifier

            case avlQty = "avl_qty"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case amountPaid = "amount_paid"

            case affiliateMeta = "affiliate_meta"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case sellerIdentifier = "seller_identifier"

            case sku

            case itemSize = "item_size"

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case deliveryCharge = "delivery_charge"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.modifiedOn = modifiedOn

            self.discount = discount

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.id = id

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.avlQty = avlQty

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.amountPaid = amountPaid

            self.affiliateMeta = affiliateMeta

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.sellerIdentifier = sellerIdentifier

            self.sku = sku

            self.itemSize = itemSize

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.deliveryCharge = deliveryCharge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            discount = try container.decode(Double.self, forKey: .discount)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            sku = try container.decode(String.self, forKey: .sku)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        }
    }
}