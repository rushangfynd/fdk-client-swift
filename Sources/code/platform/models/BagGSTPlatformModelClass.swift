

import Foundation
public extension PlatformClient {
    /*
         Model: BagGST
         Used By: Orders
     */

    class BagGST: Codable {
        public var gstTaxPercentage: Int?

        public var valueOfGood: Int?

        public var brandCalculatedAmount: Int?

        public var gstTag: String?

        public var gstFee: Int?

        public var isDefaultHsnCode: Bool?

        public var gstinCode: String?

        public var hsnCode: String?

        public enum CodingKeys: String, CodingKey {
            case gstTaxPercentage = "gst_tax_percentage"

            case valueOfGood = "value_of_good"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstTag = "gst_tag"

            case gstFee = "gst_fee"

            case isDefaultHsnCode = "is_default_hsn_code"

            case gstinCode = "gstin_code"

            case hsnCode = "hsn_code"
        }

        public init(brandCalculatedAmount: Int? = nil, gstinCode: String? = nil, gstFee: Int? = nil, gstTag: String? = nil, gstTaxPercentage: Int? = nil, hsnCode: String? = nil, isDefaultHsnCode: Bool? = nil, valueOfGood: Int? = nil) {
            self.gstTaxPercentage = gstTaxPercentage

            self.valueOfGood = valueOfGood

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstTag = gstTag

            self.gstFee = gstFee

            self.isDefaultHsnCode = isDefaultHsnCode

            self.gstinCode = gstinCode

            self.hsnCode = hsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandCalculatedAmount = try container.decode(Int.self, forKey: .brandCalculatedAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstTag = try container.decode(String.self, forKey: .gstTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstFee = try container.decode(Int.self, forKey: .gstFee)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDefaultHsnCode = try container.decode(Bool.self, forKey: .isDefaultHsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstinCode = try container.decode(String.self, forKey: .gstinCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hsnCode = try container.decode(String.self, forKey: .hsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(isDefaultHsnCode, forKey: .isDefaultHsnCode)

            try? container.encodeIfPresent(gstinCode, forKey: .gstinCode)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
        }
    }
}