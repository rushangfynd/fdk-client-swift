

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ProcessingDates
         Used By: Order
     */

    class ProcessingDates: Codable {
        public var dispatchByDate: String?

        public var dispatchAfterDate: String?

        public var customerPickupSlot: [String: Any]?

        public var confirmByDate: String?

        public var packByDate: String?

        public var dpPickupSlot: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case dispatchByDate = "dispatch_by_date"

            case dispatchAfterDate = "dispatch_after_date"

            case customerPickupSlot = "customer_pickup_slot"

            case confirmByDate = "confirm_by_date"

            case packByDate = "pack_by_date"

            case dpPickupSlot = "dp_pickup_slot"
        }

        public init(confirmByDate: String? = nil, customerPickupSlot: [String: Any]? = nil, dispatchAfterDate: String? = nil, dispatchByDate: String? = nil, dpPickupSlot: [String: Any]? = nil, packByDate: String? = nil) {
            self.dispatchByDate = dispatchByDate

            self.dispatchAfterDate = dispatchAfterDate

            self.customerPickupSlot = customerPickupSlot

            self.confirmByDate = confirmByDate

            self.packByDate = packByDate

            self.dpPickupSlot = dpPickupSlot
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dispatchByDate = try container.decode(String.self, forKey: .dispatchByDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dispatchAfterDate = try container.decode(String.self, forKey: .dispatchAfterDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerPickupSlot = try container.decode([String: Any].self, forKey: .customerPickupSlot)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                confirmByDate = try container.decode(String.self, forKey: .confirmByDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                packByDate = try container.decode(String.self, forKey: .packByDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpPickupSlot = try container.decode([String: Any].self, forKey: .dpPickupSlot)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dispatchByDate, forKey: .dispatchByDate)

            try? container.encodeIfPresent(dispatchAfterDate, forKey: .dispatchAfterDate)

            try? container.encodeIfPresent(customerPickupSlot, forKey: .customerPickupSlot)

            try? container.encodeIfPresent(confirmByDate, forKey: .confirmByDate)

            try? container.encodeIfPresent(packByDate, forKey: .packByDate)

            try? container.encodeIfPresent(dpPickupSlot, forKey: .dpPickupSlot)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ProcessingDates
         Used By: Order
     */

    class ProcessingDates: Codable {
        public var dispatchByDate: String?

        public var dispatchAfterDate: String?

        public var customerPickupSlot: [String: Any]?

        public var confirmByDate: String?

        public var packByDate: String?

        public var dpPickupSlot: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case dispatchByDate = "dispatch_by_date"

            case dispatchAfterDate = "dispatch_after_date"

            case customerPickupSlot = "customer_pickup_slot"

            case confirmByDate = "confirm_by_date"

            case packByDate = "pack_by_date"

            case dpPickupSlot = "dp_pickup_slot"
        }

        public init(confirmByDate: String? = nil, customerPickupSlot: [String: Any]? = nil, dispatchAfterDate: String? = nil, dispatchByDate: String? = nil, dpPickupSlot: [String: Any]? = nil, packByDate: String? = nil) {
            self.dispatchByDate = dispatchByDate

            self.dispatchAfterDate = dispatchAfterDate

            self.customerPickupSlot = customerPickupSlot

            self.confirmByDate = confirmByDate

            self.packByDate = packByDate

            self.dpPickupSlot = dpPickupSlot
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dispatchByDate = try container.decode(String.self, forKey: .dispatchByDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dispatchAfterDate = try container.decode(String.self, forKey: .dispatchAfterDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerPickupSlot = try container.decode([String: Any].self, forKey: .customerPickupSlot)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                confirmByDate = try container.decode(String.self, forKey: .confirmByDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                packByDate = try container.decode(String.self, forKey: .packByDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpPickupSlot = try container.decode([String: Any].self, forKey: .dpPickupSlot)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dispatchByDate, forKey: .dispatchByDate)

            try? container.encodeIfPresent(dispatchAfterDate, forKey: .dispatchAfterDate)

            try? container.encodeIfPresent(customerPickupSlot, forKey: .customerPickupSlot)

            try? container.encodeIfPresent(confirmByDate, forKey: .confirmByDate)

            try? container.encodeIfPresent(packByDate, forKey: .packByDate)

            try? container.encodeIfPresent(dpPickupSlot, forKey: .dpPickupSlot)
        }
    }
}
