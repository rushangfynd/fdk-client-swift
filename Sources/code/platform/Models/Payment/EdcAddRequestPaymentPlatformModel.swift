

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcAddRequest
         Used By: Payment
     */

    class EdcAddRequest: Codable {
        public var storeId: Int

        public var edcDeviceSerialNo: String

        public var terminalSerialNo: String

        public var edcModel: String

        public var deviceTag: String?

        public var aggregatorId: Int

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case terminalSerialNo = "terminal_serial_no"

            case edcModel = "edc_model"

            case deviceTag = "device_tag"

            case aggregatorId = "aggregator_id"
        }

        public init(aggregatorId: Int, deviceTag: String? = nil, edcDeviceSerialNo: String, edcModel: String, storeId: Int, terminalSerialNo: String) {
            self.storeId = storeId

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.terminalSerialNo = terminalSerialNo

            self.edcModel = edcModel

            self.deviceTag = deviceTag

            self.aggregatorId = aggregatorId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            edcModel = try container.decode(String.self, forKey: .edcModel)

            do {
                deviceTag = try container.decode(String.self, forKey: .deviceTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encode(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: EdcAddRequest
         Used By: Payment
     */

    class EdcAddRequest: Codable {
        public var storeId: Int

        public var edcDeviceSerialNo: String

        public var terminalSerialNo: String

        public var edcModel: String

        public var deviceTag: String?

        public var aggregatorId: Int

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case terminalSerialNo = "terminal_serial_no"

            case edcModel = "edc_model"

            case deviceTag = "device_tag"

            case aggregatorId = "aggregator_id"
        }

        public init(aggregatorId: Int, deviceTag: String? = nil, edcDeviceSerialNo: String, edcModel: String, storeId: Int, terminalSerialNo: String) {
            self.storeId = storeId

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.terminalSerialNo = terminalSerialNo

            self.edcModel = edcModel

            self.deviceTag = deviceTag

            self.aggregatorId = aggregatorId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            edcModel = try container.decode(String.self, forKey: .edcModel)

            do {
                deviceTag = try container.decode(String.self, forKey: .deviceTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encode(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)
        }
    }
}