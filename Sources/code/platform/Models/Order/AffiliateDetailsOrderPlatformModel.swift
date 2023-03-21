

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateDetails
         Used By: Order
     */

    class AffiliateDetails: Codable {
        public var affiliateMeta: AffiliateMeta

        public var adId: String?

        public var shipmentMeta: ShipmentMeta

        public var affiliateId: String?

        public var companyAffiliateTag: String?

        public var affiliateShipmentId: String

        public var affiliateStoreId: String

        public var affiliateOrderId: String

        public var pdfLinks: PDFLinks?

        public var affiliateBagId: String

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case adId = "ad_id"

            case shipmentMeta = "shipment_meta"

            case affiliateId = "affiliate_id"

            case companyAffiliateTag = "company_affiliate_tag"

            case affiliateShipmentId = "affiliate_shipment_id"

            case affiliateStoreId = "affiliate_store_id"

            case affiliateOrderId = "affiliate_order_id"

            case pdfLinks = "pdf_links"

            case affiliateBagId = "affiliate_bag_id"
        }

        public init(adId: String? = nil, affiliateBagId: String, affiliateId: String? = nil, affiliateMeta: AffiliateMeta, affiliateOrderId: String, affiliateShipmentId: String, affiliateStoreId: String, companyAffiliateTag: String? = nil, pdfLinks: PDFLinks? = nil, shipmentMeta: ShipmentMeta) {
            self.affiliateMeta = affiliateMeta

            self.adId = adId

            self.shipmentMeta = shipmentMeta

            self.affiliateId = affiliateId

            self.companyAffiliateTag = companyAffiliateTag

            self.affiliateShipmentId = affiliateShipmentId

            self.affiliateStoreId = affiliateStoreId

            self.affiliateOrderId = affiliateOrderId

            self.pdfLinks = pdfLinks

            self.affiliateBagId = affiliateBagId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)

            do {
                adId = try container.decode(String.self, forKey: .adId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentMeta = try container.decode(ShipmentMeta.self, forKey: .shipmentMeta)

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyAffiliateTag = try container.decode(String.self, forKey: .companyAffiliateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            do {
                pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(adId, forKey: .adId)

            try? container.encodeIfPresent(shipmentMeta, forKey: .shipmentMeta)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(companyAffiliateTag, forKey: .companyAffiliateTag)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateDetails
         Used By: Order
     */

    class AffiliateDetails: Codable {
        public var affiliateMeta: AffiliateMeta

        public var adId: String?

        public var shipmentMeta: ShipmentMeta

        public var affiliateId: String?

        public var companyAffiliateTag: String?

        public var affiliateShipmentId: String

        public var affiliateStoreId: String

        public var affiliateOrderId: String

        public var pdfLinks: PDFLinks?

        public var affiliateBagId: String

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case adId = "ad_id"

            case shipmentMeta = "shipment_meta"

            case affiliateId = "affiliate_id"

            case companyAffiliateTag = "company_affiliate_tag"

            case affiliateShipmentId = "affiliate_shipment_id"

            case affiliateStoreId = "affiliate_store_id"

            case affiliateOrderId = "affiliate_order_id"

            case pdfLinks = "pdf_links"

            case affiliateBagId = "affiliate_bag_id"
        }

        public init(adId: String? = nil, affiliateBagId: String, affiliateId: String? = nil, affiliateMeta: AffiliateMeta, affiliateOrderId: String, affiliateShipmentId: String, affiliateStoreId: String, companyAffiliateTag: String? = nil, pdfLinks: PDFLinks? = nil, shipmentMeta: ShipmentMeta) {
            self.affiliateMeta = affiliateMeta

            self.adId = adId

            self.shipmentMeta = shipmentMeta

            self.affiliateId = affiliateId

            self.companyAffiliateTag = companyAffiliateTag

            self.affiliateShipmentId = affiliateShipmentId

            self.affiliateStoreId = affiliateStoreId

            self.affiliateOrderId = affiliateOrderId

            self.pdfLinks = pdfLinks

            self.affiliateBagId = affiliateBagId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)

            do {
                adId = try container.decode(String.self, forKey: .adId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentMeta = try container.decode(ShipmentMeta.self, forKey: .shipmentMeta)

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyAffiliateTag = try container.decode(String.self, forKey: .companyAffiliateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            do {
                pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(adId, forKey: .adId)

            try? container.encodeIfPresent(shipmentMeta, forKey: .shipmentMeta)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(companyAffiliateTag, forKey: .companyAffiliateTag)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)
        }
    }
}
