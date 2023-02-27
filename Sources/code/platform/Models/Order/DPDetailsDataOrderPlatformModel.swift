

import Foundation

public extension PlatformClient.Order {
    /*
         Model: DPDetailsData
         Used By: Order
     */

    class DPDetailsData: Codable {
        public var ewayBillId: String?

        public var gstTag: String?

        public var ewayBillNumber: Int?

        public var trackUrl: String?

        public var id: Int?

        public var name: String?

        public var awbNo: String?

        public var country: String?

        public var amountHandlingCharges: Int?

        public var dpCharges: Int?

        public var dpReturnCharges: Int?

        public var pincode: String?

        public enum CodingKeys: String, CodingKey {
            case ewayBillId = "eway_bill_id"

            case gstTag = "gst_tag"

            case ewayBillNumber = "eway_bill_number"

            case trackUrl = "track_url"

            case id

            case name

            case awbNo = "awb_no"

            case country

            case amountHandlingCharges = "amount_handling_charges"

            case dpCharges = "dp_charges"

            case dpReturnCharges = "dp_return_charges"

            case pincode
        }

        public init(amountHandlingCharges: Int? = nil, awbNo: String? = nil, country: String? = nil, dpCharges: Int? = nil, dpReturnCharges: Int? = nil, ewayBillId: String? = nil, ewayBillNumber: Int? = nil, gstTag: String? = nil, id: Int? = nil, name: String? = nil, pincode: String? = nil, trackUrl: String? = nil) {
            self.ewayBillId = ewayBillId

            self.gstTag = gstTag

            self.ewayBillNumber = ewayBillNumber

            self.trackUrl = trackUrl

            self.id = id

            self.name = name

            self.awbNo = awbNo

            self.country = country

            self.amountHandlingCharges = amountHandlingCharges

            self.dpCharges = dpCharges

            self.dpReturnCharges = dpReturnCharges

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ewayBillId = try container.decode(String.self, forKey: .ewayBillId)

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
                ewayBillNumber = try container.decode(Int.self, forKey: .ewayBillNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackUrl = try container.decode(String.self, forKey: .trackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                awbNo = try container.decode(String.self, forKey: .awbNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountHandlingCharges = try container.decode(Int.self, forKey: .amountHandlingCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpCharges = try container.decode(Int.self, forKey: .dpCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpReturnCharges = try container.decode(Int.self, forKey: .dpReturnCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(String.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encode(ewayBillNumber, forKey: .ewayBillNumber)

            try? container.encode(trackUrl, forKey: .trackUrl)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(awbNo, forKey: .awbNo)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(amountHandlingCharges, forKey: .amountHandlingCharges)

            try? container.encodeIfPresent(dpCharges, forKey: .dpCharges)

            try? container.encodeIfPresent(dpReturnCharges, forKey: .dpReturnCharges)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: DPDetailsData
         Used By: Order
     */

    class DPDetailsData: Codable {
        public var ewayBillId: String?

        public var gstTag: String?

        public var ewayBillNumber: Int?

        public var trackUrl: String?

        public var id: Int?

        public var name: String?

        public var awbNo: String?

        public var country: String?

        public var amountHandlingCharges: Int?

        public var dpCharges: Int?

        public var dpReturnCharges: Int?

        public var pincode: String?

        public enum CodingKeys: String, CodingKey {
            case ewayBillId = "eway_bill_id"

            case gstTag = "gst_tag"

            case ewayBillNumber = "eway_bill_number"

            case trackUrl = "track_url"

            case id

            case name

            case awbNo = "awb_no"

            case country

            case amountHandlingCharges = "amount_handling_charges"

            case dpCharges = "dp_charges"

            case dpReturnCharges = "dp_return_charges"

            case pincode
        }

        public init(amountHandlingCharges: Int? = nil, awbNo: String? = nil, country: String? = nil, dpCharges: Int? = nil, dpReturnCharges: Int? = nil, ewayBillId: String? = nil, ewayBillNumber: Int? = nil, gstTag: String? = nil, id: Int? = nil, name: String? = nil, pincode: String? = nil, trackUrl: String? = nil) {
            self.ewayBillId = ewayBillId

            self.gstTag = gstTag

            self.ewayBillNumber = ewayBillNumber

            self.trackUrl = trackUrl

            self.id = id

            self.name = name

            self.awbNo = awbNo

            self.country = country

            self.amountHandlingCharges = amountHandlingCharges

            self.dpCharges = dpCharges

            self.dpReturnCharges = dpReturnCharges

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ewayBillId = try container.decode(String.self, forKey: .ewayBillId)

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
                ewayBillNumber = try container.decode(Int.self, forKey: .ewayBillNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackUrl = try container.decode(String.self, forKey: .trackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                awbNo = try container.decode(String.self, forKey: .awbNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountHandlingCharges = try container.decode(Int.self, forKey: .amountHandlingCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpCharges = try container.decode(Int.self, forKey: .dpCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpReturnCharges = try container.decode(Int.self, forKey: .dpReturnCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(String.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encode(ewayBillNumber, forKey: .ewayBillNumber)

            try? container.encode(trackUrl, forKey: .trackUrl)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(awbNo, forKey: .awbNo)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(amountHandlingCharges, forKey: .amountHandlingCharges)

            try? container.encodeIfPresent(dpCharges, forKey: .dpCharges)

            try? container.encodeIfPresent(dpReturnCharges, forKey: .dpReturnCharges)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
