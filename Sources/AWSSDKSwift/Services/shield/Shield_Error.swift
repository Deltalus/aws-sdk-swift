// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Shield
public enum ShieldError: AWSErrorType {
    case internalErrorException(message: String?)
    case resourceAlreadyExistsException(message: String?)
    case invalidParameterException(message: String?)
    case invalidOperationException(message: String?)
    case resourceNotFoundException(message: String?)
    case invalidResourceException(message: String?)
    case limitsExceededException(message: String?)
    case optimisticLockException(message: String?)
    case lockedSubscriptionException(message: String?)
}

extension ShieldError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InternalErrorException":
            self = .internalErrorException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InvalidOperationException":
            self = .invalidOperationException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "InvalidResourceException":
            self = .invalidResourceException(message: message)
        case "LimitsExceededException":
            self = .limitsExceededException(message: message)
        case "OptimisticLockException":
            self = .optimisticLockException(message: message)
        case "LockedSubscriptionException":
            self = .lockedSubscriptionException(message: message)
        default:
            return nil
        }
    }
}