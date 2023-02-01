

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var transferPrice: Int

        public var modifiedOn: String

        public var itemId: Int

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var discount: Double

        public var itemSize: String

        public var hsnCodeId: String

        public var quantity: Int

        public var identifier: [String: Any]

        public var companyId: Int

        public var unitPrice: Double

        public var avlQty: Int

        public var deliveryCharge: Double

        public var id: String

        public var amountPaid: Double

        public var priceMarked: Double

        public var affiliateMeta: [String: Any]

        public var storeId: Int

        public var sku: String

        public var priceEffective: Double

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case transferPrice = "transfer_price"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case discount

            case itemSize = "item_size"

            case hsnCodeId = "hsn_code_id"

            case quantity

            case identifier

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case affiliateMeta = "affiliate_meta"

            case storeId = "store_id"

            case sku

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.transferPrice = transferPrice

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.discount = discount

            self.itemSize = itemSize

            self.hsnCodeId = hsnCodeId

            self.quantity = quantity

            self.identifier = identifier

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.affiliateMeta = affiliateMeta

            self.storeId = storeId

            self.sku = sku

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}
