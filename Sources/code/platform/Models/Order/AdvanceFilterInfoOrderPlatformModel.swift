

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AdvanceFilterInfo
         Used By: Order
     */

    class AdvanceFilterInfo: Codable {
        public var processed: [FiltersInfo]?

        public var actionCentre: [FiltersInfo]?

        public var returned: [FiltersInfo]?

        public var unfulfilled: [FiltersInfo]?

        public var filters: [FiltersInfo]?

        public enum CodingKeys: String, CodingKey {
            case processed

            case actionCentre = "action_centre"

            case returned

            case unfulfilled

            case filters
        }

        public init(actionCentre: [FiltersInfo]? = nil, filters: [FiltersInfo]? = nil, processed: [FiltersInfo]? = nil, returned: [FiltersInfo]? = nil, unfulfilled: [FiltersInfo]? = nil) {
            self.processed = processed

            self.actionCentre = actionCentre

            self.returned = returned

            self.unfulfilled = unfulfilled

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                processed = try container.decode([FiltersInfo].self, forKey: .processed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                actionCentre = try container.decode([FiltersInfo].self, forKey: .actionCentre)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returned = try container.decode([FiltersInfo].self, forKey: .returned)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                unfulfilled = try container.decode([FiltersInfo].self, forKey: .unfulfilled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode([FiltersInfo].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(processed, forKey: .processed)

            try? container.encodeIfPresent(actionCentre, forKey: .actionCentre)

            try? container.encodeIfPresent(returned, forKey: .returned)

            try? container.encodeIfPresent(unfulfilled, forKey: .unfulfilled)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AdvanceFilterInfo
         Used By: Order
     */

    class AdvanceFilterInfo: Codable {
        public var processed: [FiltersInfo]?

        public var actionCentre: [FiltersInfo]?

        public var returned: [FiltersInfo]?

        public var unfulfilled: [FiltersInfo]?

        public var filters: [FiltersInfo]?

        public enum CodingKeys: String, CodingKey {
            case processed

            case actionCentre = "action_centre"

            case returned

            case unfulfilled

            case filters
        }

        public init(actionCentre: [FiltersInfo]? = nil, filters: [FiltersInfo]? = nil, processed: [FiltersInfo]? = nil, returned: [FiltersInfo]? = nil, unfulfilled: [FiltersInfo]? = nil) {
            self.processed = processed

            self.actionCentre = actionCentre

            self.returned = returned

            self.unfulfilled = unfulfilled

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                processed = try container.decode([FiltersInfo].self, forKey: .processed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                actionCentre = try container.decode([FiltersInfo].self, forKey: .actionCentre)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returned = try container.decode([FiltersInfo].self, forKey: .returned)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                unfulfilled = try container.decode([FiltersInfo].self, forKey: .unfulfilled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode([FiltersInfo].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(processed, forKey: .processed)

            try? container.encodeIfPresent(actionCentre, forKey: .actionCentre)

            try? container.encodeIfPresent(returned, forKey: .returned)

            try? container.encodeIfPresent(unfulfilled, forKey: .unfulfilled)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}