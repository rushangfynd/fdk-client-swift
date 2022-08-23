

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Orders
     */

    class ShipmentInfoResponse: Codable {
        public var gstDetails: GST?

        public var statusProgress: Int

        public var enableDpTracking: String

        public var enableTracking: Bool?

        public var canCancel: Bool?

        public var payButton: String?

        public var shipmentId: String

        public var refundDetails: [String: Any]?

        public var deliverySlot: [String: Any]

        public var forwardTrackingList: [[String: Any]]?

        public var forwardShipmentStatus: [[String: Any]]?

        public var currentShipmentStatus: [String: Any]

        public var userId: String

        public var isPdsr: String?

        public var prices: Prices?

        public var fulfillingStore: FulfillingStore?

        public var billingDetails: UserDetailsData?

        public var childNodes: [String]?

        public var trackingUrl: String

        public var priorityText: String?

        public var orderType: String

        public var orderingStore: [String: Any]

        public var totalItems: Int?

        public var isFyndCoupon: Bool

        public var invoice: [String: Any]

        public var bankData: [String: Any]?

        public var bagStatusHistory: [BagStatusHistory]?

        public var dueDate: String?

        public var paymentMode: String

        public var items: [[String: Any]]

        public var platformLogo: Bool

        public var packagingType: String

        public var canBreak: String

        public var dpDetails: DPDetails?

        public var vertical: String?

        public var bags: OrderBags?

        public var mid: String?

        public var deliveryDetails: UserDetailsData?

        public var affiliateShipmentId: String

        public var isInvoiced: Bool

        public var forwardOrderStatus: [[String: Any]]?

        public var userAgent: String

        public var company: [String: Any]

        public var refundText: String?

        public var pickedDate: String

        public var payments: ShipmentPayments?

        public var lockStatus: String

        public var beneficiaryDetails: Bool?

        public var deliveryStatus: [[String: Any]]

        public var canReturn: Bool?

        public var journeyType: String

        public var fyndstoreEmp: [String: Any]

        public var emailId: String

        public var shipmentQuantity: Int

        public var orderCreatedTime: String?

        public var userInfo: [String: Any]?

        public var coupon: [String: Any]?

        public var isFyndStore: String?

        public var order: OrderDetailsData?

        public var goGreen: Bool?

        public var securedDeliveryFlag: String?

        public var trackingList: [TrackingList]?

        public var isNotFyndSource: Bool

        public var escalation: [String: Any]?

        public var creditNoteId: String

        public var isPackagingOrder: Bool

        public var status: ShipmentStatusData?

        public var kiranaStoreId: String?

        public var replacementDetails: String?

        public var orderStatus: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case gstDetails = "gst_details"

            case statusProgress = "status_progress"

            case enableDpTracking = "enable_dp_tracking"

            case enableTracking = "enable_tracking"

            case canCancel = "can_cancel"

            case payButton = "pay_button"

            case shipmentId = "shipment_id"

            case refundDetails = "refund_details"

            case deliverySlot = "delivery_slot"

            case forwardTrackingList = "forward_tracking_list"

            case forwardShipmentStatus = "forward_shipment_status"

            case currentShipmentStatus = "current_shipment_status"

            case userId = "user_id"

            case isPdsr = "is_pdsr"

            case prices

            case fulfillingStore = "fulfilling_store"

            case billingDetails = "billing_details"

            case childNodes = "child_nodes"

            case trackingUrl = "tracking_url"

            case priorityText = "priority_text"

            case orderType = "order_type"

            case orderingStore = "ordering_store"

            case totalItems = "total_items"

            case isFyndCoupon = "is_fynd_coupon"

            case invoice

            case bankData = "bank_data"

            case bagStatusHistory = "bag_status_history"

            case dueDate = "due_date"

            case paymentMode = "payment_mode"

            case items

            case platformLogo = "platform_logo"

            case packagingType = "packaging_type"

            case canBreak = "can_break"

            case dpDetails = "dp_details"

            case vertical

            case bags

            case mid

            case deliveryDetails = "delivery_details"

            case affiliateShipmentId = "affiliate_shipment_id"

            case isInvoiced = "is_invoiced"

            case forwardOrderStatus = "forward_order_status"

            case userAgent = "user_agent"

            case company

            case refundText = "refund_text"

            case pickedDate = "picked_date"

            case payments

            case lockStatus = "lock_status"

            case beneficiaryDetails = "beneficiary_details"

            case deliveryStatus = "delivery_status"

            case canReturn = "can_return"

            case journeyType = "journey_type"

            case fyndstoreEmp = "fyndstore_emp"

            case emailId = "email_id"

            case shipmentQuantity = "shipment_quantity"

            case orderCreatedTime = "order_created_time"

            case userInfo = "user_info"

            case coupon

            case isFyndStore = "is_fynd_store"

            case order

            case goGreen = "go_green"

            case securedDeliveryFlag = "secured_delivery_flag"

            case trackingList = "tracking_list"

            case isNotFyndSource = "is_not_fynd_source"

            case escalation

            case creditNoteId = "credit_note_id"

            case isPackagingOrder = "is_packaging_order"

            case status

            case kiranaStoreId = "kirana_store_id"

            case replacementDetails = "replacement_details"

            case orderStatus = "order_status"
        }

        public init(affiliateShipmentId: String, bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], deliveryStatus: [[String: Any]], dpDetails: DPDetails? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GST? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, payButton: String? = nil, pickedDate: String, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, statusProgress: Int, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.gstDetails = gstDetails

            self.statusProgress = statusProgress

            self.enableDpTracking = enableDpTracking

            self.enableTracking = enableTracking

            self.canCancel = canCancel

            self.payButton = payButton

            self.shipmentId = shipmentId

            self.refundDetails = refundDetails

            self.deliverySlot = deliverySlot

            self.forwardTrackingList = forwardTrackingList

            self.forwardShipmentStatus = forwardShipmentStatus

            self.currentShipmentStatus = currentShipmentStatus

            self.userId = userId

            self.isPdsr = isPdsr

            self.prices = prices

            self.fulfillingStore = fulfillingStore

            self.billingDetails = billingDetails

            self.childNodes = childNodes

            self.trackingUrl = trackingUrl

            self.priorityText = priorityText

            self.orderType = orderType

            self.orderingStore = orderingStore

            self.totalItems = totalItems

            self.isFyndCoupon = isFyndCoupon

            self.invoice = invoice

            self.bankData = bankData

            self.bagStatusHistory = bagStatusHistory

            self.dueDate = dueDate

            self.paymentMode = paymentMode

            self.items = items

            self.platformLogo = platformLogo

            self.packagingType = packagingType

            self.canBreak = canBreak

            self.dpDetails = dpDetails

            self.vertical = vertical

            self.bags = bags

            self.mid = mid

            self.deliveryDetails = deliveryDetails

            self.affiliateShipmentId = affiliateShipmentId

            self.isInvoiced = isInvoiced

            self.forwardOrderStatus = forwardOrderStatus

            self.userAgent = userAgent

            self.company = company

            self.refundText = refundText

            self.pickedDate = pickedDate

            self.payments = payments

            self.lockStatus = lockStatus

            self.beneficiaryDetails = beneficiaryDetails

            self.deliveryStatus = deliveryStatus

            self.canReturn = canReturn

            self.journeyType = journeyType

            self.fyndstoreEmp = fyndstoreEmp

            self.emailId = emailId

            self.shipmentQuantity = shipmentQuantity

            self.orderCreatedTime = orderCreatedTime

            self.userInfo = userInfo

            self.coupon = coupon

            self.isFyndStore = isFyndStore

            self.order = order

            self.goGreen = goGreen

            self.securedDeliveryFlag = securedDeliveryFlag

            self.trackingList = trackingList

            self.isNotFyndSource = isNotFyndSource

            self.escalation = escalation

            self.creditNoteId = creditNoteId

            self.isPackagingOrder = isPackagingOrder

            self.status = status

            self.kiranaStoreId = kiranaStoreId

            self.replacementDetails = replacementDetails

            self.orderStatus = orderStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gstDetails = try container.decode(GST.self, forKey: .gstDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            do {
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payButton = try container.decode(String.self, forKey: .payButton)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                refundDetails = try container.decode([String: Any].self, forKey: .refundDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            do {
                forwardTrackingList = try container.decode([[String: Any]].self, forKey: .forwardTrackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forwardShipmentStatus = try container.decode([[String: Any]].self, forKey: .forwardShipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            userId = try container.decode(String.self, forKey: .userId)

            do {
                isPdsr = try container.decode(String.self, forKey: .isPdsr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childNodes = try container.decode([String].self, forKey: .childNodes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            do {
                bankData = try container.decode([String: Any].self, forKey: .bankData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            items = try container.decode([[String: Any]].self, forKey: .items)

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            packagingType = try container.decode(String.self, forKey: .packagingType)

            canBreak = try container.decode(String.self, forKey: .canBreak)

            do {
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vertical = try container.decode(String.self, forKey: .vertical)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bags = try container.decode(OrderBags.self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mid = try container.decode(String.self, forKey: .mid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            do {
                forwardOrderStatus = try container.decode([[String: Any]].self, forKey: .forwardOrderStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userAgent = try container.decode(String.self, forKey: .userAgent)

            company = try container.decode([String: Any].self, forKey: .company)

            do {
                refundText = try container.decode(String.self, forKey: .refundText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            do {
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            do {
                beneficiaryDetails = try container.decode(Bool.self, forKey: .beneficiaryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            emailId = try container.decode(String.self, forKey: .emailId)

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            do {
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userInfo = try container.decode([String: Any].self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isFyndStore = try container.decode(String.self, forKey: .isFyndStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                order = try container.decode(OrderDetailsData.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                goGreen = try container.decode(Bool.self, forKey: .goGreen)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                securedDeliveryFlag = try container.decode(String.self, forKey: .securedDeliveryFlag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            do {
                escalation = try container.decode([String: Any].self, forKey: .escalation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            do {
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                kiranaStoreId = try container.decode(String.self, forKey: .kiranaStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                replacementDetails = try container.decode(String.self, forKey: .replacementDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)
        }
    }
}
