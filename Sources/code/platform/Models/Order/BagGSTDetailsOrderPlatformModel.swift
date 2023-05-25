

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var gstFee: Double

        public var gstinCode: String?

        public var taxCollectedAtSource: Double

        public var isDefaultHsnCode: Bool?

        public var cgstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var sgstTaxPercentage: Double

        public var valueOfGood: Double

        public var igstGstFee: String

        public var sgstGstFee: String

        public var cgstGstFee: String

        public var gstTaxPercentage: Double

        public var gstTag: String

        public var hsnCode: String

        public var hsnCodeId: String

        public var igstTaxPercentage: Double

        public enum CodingKeys: String, CodingKey {
            case gstFee = "gst_fee"

            case gstinCode = "gstin_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case isDefaultHsnCode = "is_default_hsn_code"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case valueOfGood = "value_of_good"

            case igstGstFee = "igst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case cgstGstFee = "cgst_gst_fee"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstTag = "gst_tag"

            case hsnCode = "hsn_code"

            case hsnCodeId = "hsn_code_id"

            case igstTaxPercentage = "igst_tax_percentage"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstFee = gstFee

            self.gstinCode = gstinCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.isDefaultHsnCode = isDefaultHsnCode

            self.cgstTaxPercentage = cgstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.sgstTaxPercentage = sgstTaxPercentage

            self.valueOfGood = valueOfGood

            self.igstGstFee = igstGstFee

            self.sgstGstFee = sgstGstFee

            self.cgstGstFee = cgstGstFee

            self.gstTaxPercentage = gstTaxPercentage

            self.gstTag = gstTag

            self.hsnCode = hsnCode

            self.hsnCodeId = hsnCodeId

            self.igstTaxPercentage = igstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagGSTDetails
         Used By: Order
     */

    class BagGSTDetails: Codable {
        public var gstFee: Double

        public var gstinCode: String?

        public var taxCollectedAtSource: Double

        public var isDefaultHsnCode: Bool?

        public var cgstTaxPercentage: Double

        public var brandCalculatedAmount: Double

        public var sgstTaxPercentage: Double

        public var valueOfGood: Double

        public var igstGstFee: String

        public var sgstGstFee: String

        public var cgstGstFee: String

        public var gstTaxPercentage: Double

        public var gstTag: String

        public var hsnCode: String

        public var hsnCodeId: String

        public var igstTaxPercentage: Double

        public enum CodingKeys: String, CodingKey {
            case gstFee = "gst_fee"

            case gstinCode = "gstin_code"

            case taxCollectedAtSource = "tax_collected_at_source"

            case isDefaultHsnCode = "is_default_hsn_code"

            case cgstTaxPercentage = "cgst_tax_percentage"

            case brandCalculatedAmount = "brand_calculated_amount"

            case sgstTaxPercentage = "sgst_tax_percentage"

            case valueOfGood = "value_of_good"

            case igstGstFee = "igst_gst_fee"

            case sgstGstFee = "sgst_gst_fee"

            case cgstGstFee = "cgst_gst_fee"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstTag = "gst_tag"

            case hsnCode = "hsn_code"

            case hsnCodeId = "hsn_code_id"

            case igstTaxPercentage = "igst_tax_percentage"
        }

        public init(brandCalculatedAmount: Double, cgstGstFee: String, cgstTaxPercentage: Double, gstinCode: String? = nil, gstFee: Double, gstTag: String, gstTaxPercentage: Double, hsnCode: String, hsnCodeId: String, igstGstFee: String, igstTaxPercentage: Double, isDefaultHsnCode: Bool? = nil, sgstGstFee: String, sgstTaxPercentage: Double, taxCollectedAtSource: Double, valueOfGood: Double) {
            self.gstFee = gstFee

            self.gstinCode = gstinCode

            self.taxCollectedAtSource = taxCollectedAtSource

            self.isDefaultHsnCode = isDefaultHsnCode

            self.cgstTaxPercentage = cgstTaxPercentage

            self.brandCalculatedAmount = brandCalculatedAmount

            self.sgstTaxPercentage = sgstTaxPercentage

            self.valueOfGood = valueOfGood

            self.igstGstFee = igstGstFee

            self.sgstGstFee = sgstGstFee

            self.cgstGstFee = cgstGstFee

            self.gstTaxPercentage = gstTaxPercentage

            self.gstTag = gstTag

            self.hsnCode = hsnCode

            self.hsnCodeId = hsnCodeId

            self.igstTaxPercentage = igstTaxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cgstTaxPercentage = try container.decode(Double.self, forKey: .cgstTaxPercentage)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            sgstTaxPercentage = try container.decode(Double.self, forKey: .sgstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            igstGstFee = try container.decode(String.self, forKey: .igstGstFee)

            sgstGstFee = try container.decode(String.self, forKey: .sgstGstFee)

            cgstGstFee = try container.decode(String.self, forKey: .cgstGstFee)

            gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            igstTaxPercentage = try container.decode(Double.self, forKey: .igstTaxPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encode(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(cgstTaxPercentage, forKey: .cgstTaxPercentage)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(sgstTaxPercentage, forKey: .sgstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(igstGstFee, forKey: .igstGstFee)

            try? container.encodeIfPresent(sgstGstFee, forKey: .sgstGstFee)

            try? container.encodeIfPresent(cgstGstFee, forKey: .cgstGstFee)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(igstTaxPercentage, forKey: .igstTaxPercentage)
        }
    }
}
