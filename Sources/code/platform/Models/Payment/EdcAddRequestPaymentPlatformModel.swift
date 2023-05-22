

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcAddRequest
         Used By: Payment
     */

    class EdcAddRequest: Codable {
        public var deviceTag: String?

        public var storeId: Int

        public var terminalSerialNo: String

        public var aggregatorId: Int

        public var edcDeviceSerialNo: String

        public var edcModel: String

        public enum CodingKeys: String, CodingKey {
            case deviceTag = "device_tag"

            case storeId = "store_id"

            case terminalSerialNo = "terminal_serial_no"

            case aggregatorId = "aggregator_id"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case edcModel = "edc_model"
        }

        public init(aggregatorId: Int, deviceTag: String? = nil, edcDeviceSerialNo: String, edcModel: String, storeId: Int, terminalSerialNo: String) {
            self.deviceTag = deviceTag

            self.storeId = storeId

            self.terminalSerialNo = terminalSerialNo

            self.aggregatorId = aggregatorId

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.edcModel = edcModel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deviceTag = try container.decode(String.self, forKey: .deviceTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            edcModel = try container.decode(String.self, forKey: .edcModel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: EdcAddRequest
         Used By: Payment
     */

    class EdcAddRequest: Codable {
        public var deviceTag: String?

        public var storeId: Int

        public var terminalSerialNo: String

        public var aggregatorId: Int

        public var edcDeviceSerialNo: String

        public var edcModel: String

        public enum CodingKeys: String, CodingKey {
            case deviceTag = "device_tag"

            case storeId = "store_id"

            case terminalSerialNo = "terminal_serial_no"

            case aggregatorId = "aggregator_id"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case edcModel = "edc_model"
        }

        public init(aggregatorId: Int, deviceTag: String? = nil, edcDeviceSerialNo: String, edcModel: String, storeId: Int, terminalSerialNo: String) {
            self.deviceTag = deviceTag

            self.storeId = storeId

            self.terminalSerialNo = terminalSerialNo

            self.aggregatorId = aggregatorId

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.edcModel = edcModel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deviceTag = try container.decode(String.self, forKey: .deviceTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            edcModel = try container.decode(String.self, forKey: .edcModel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)
        }
    }
}
