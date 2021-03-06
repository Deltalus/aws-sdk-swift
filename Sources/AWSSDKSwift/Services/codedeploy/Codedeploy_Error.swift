// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Codedeploy
public enum CodedeployError: AWSErrorType {
    case deploymentIdRequiredException(message: String?)
    case deploymentDoesNotExistException(message: String?)
    case deploymentNotStartedException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidDeploymentIdException(message: String?)
    case invalidInstanceStatusException(message: String?)
    case invalidInstanceTypeException(message: String?)
    case invalidDeploymentInstanceTypeException(message: String?)
    case batchLimitExceededException(message: String?)
    case applicationNameRequiredException(message: String?)
    case invalidApplicationNameException(message: String?)
    case applicationDoesNotExistException(message: String?)
    case invalidDeploymentConfigNameException(message: String?)
    case deploymentConfigNameRequiredException(message: String?)
    case deploymentConfigAlreadyExistsException(message: String?)
    case invalidMinimumHealthyHostValueException(message: String?)
    case deploymentConfigLimitExceededException(message: String?)
    case invalidRegistrationStatusException(message: String?)
    case invalidTagFilterException(message: String?)
    case instanceNameRequiredException(message: String?)
    case tagRequiredException(message: String?)
    case invalidTagException(message: String?)
    case tagLimitExceededException(message: String?)
    case instanceLimitExceededException(message: String?)
    case instanceNotRegisteredException(message: String?)
    case invalidInstanceNameException(message: String?)
    case deploymentGroupNameRequiredException(message: String?)
    case invalidDeploymentGroupNameException(message: String?)
    case instanceIdRequiredException(message: String?)
    case instanceDoesNotExistException(message: String?)
    case deploymentGroupAlreadyExistsException(message: String?)
    case invalidEC2TagException(message: String?)
    case invalidAutoScalingGroupException(message: String?)
    case deploymentConfigDoesNotExistException(message: String?)
    case roleRequiredException(message: String?)
    case invalidRoleException(message: String?)
    case deploymentGroupLimitExceededException(message: String?)
    case lifecycleHookLimitExceededException(message: String?)
    case invalidTriggerConfigException(message: String?)
    case triggerTargetsLimitExceededException(message: String?)
    case invalidAlarmConfigException(message: String?)
    case alarmsLimitExceededException(message: String?)
    case invalidAutoRollbackConfigException(message: String?)
    case invalidLoadBalancerInfoException(message: String?)
    case invalidDeploymentStyleException(message: String?)
    case invalidBlueGreenDeploymentConfigurationException(message: String?)
    case invalidEC2TagCombinationException(message: String?)
    case invalidOnPremisesTagCombinationException(message: String?)
    case tagSetListLimitExceededException(message: String?)
    case revisionDoesNotExistException(message: String?)
    case revisionRequiredException(message: String?)
    case invalidRevisionException(message: String?)
    case descriptionTooLongException(message: String?)
    case deploymentAlreadyCompletedException(message: String?)
    case deploymentGroupDoesNotExistException(message: String?)
    case invalidTimeRangeException(message: String?)
    case invalidDeploymentStatusException(message: String?)
    case deploymentConfigInUseException(message: String?)
    case invalidOperationException(message: String?)
    case applicationAlreadyExistsException(message: String?)
    case applicationLimitExceededException(message: String?)
    case deploymentLimitExceededException(message: String?)
    case invalidTargetInstancesException(message: String?)
    case invalidFileExistsBehaviorException(message: String?)
    case resourceValidationException(message: String?)
    case invalidSortByException(message: String?)
    case invalidSortOrderException(message: String?)
    case invalidBucketNameFilterException(message: String?)
    case invalidKeyPrefixFilterException(message: String?)
    case bucketNameFilterRequiredException(message: String?)
    case invalidDeployedStateFilterException(message: String?)
    case unsupportedActionForDeploymentTypeException(message: String?)
    case deploymentIsNotInReadyStateException(message: String?)
    case instanceNameAlreadyRegisteredException(message: String?)
    case iamArnRequiredException(message: String?)
    case iamSessionArnAlreadyRegisteredException(message: String?)
    case iamUserArnAlreadyRegisteredException(message: String?)
    case iamUserArnRequiredException(message: String?)
    case invalidIamSessionArnException(message: String?)
    case invalidIamUserArnException(message: String?)
    case multipleIamArnsProvidedException(message: String?)
}

extension CodedeployError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "DeploymentIdRequiredException":
            self = .deploymentIdRequiredException(message: message)
        case "DeploymentDoesNotExistException":
            self = .deploymentDoesNotExistException(message: message)
        case "DeploymentNotStartedException":
            self = .deploymentNotStartedException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidDeploymentIdException":
            self = .invalidDeploymentIdException(message: message)
        case "InvalidInstanceStatusException":
            self = .invalidInstanceStatusException(message: message)
        case "InvalidInstanceTypeException":
            self = .invalidInstanceTypeException(message: message)
        case "InvalidDeploymentInstanceTypeException":
            self = .invalidDeploymentInstanceTypeException(message: message)
        case "BatchLimitExceededException":
            self = .batchLimitExceededException(message: message)
        case "ApplicationNameRequiredException":
            self = .applicationNameRequiredException(message: message)
        case "InvalidApplicationNameException":
            self = .invalidApplicationNameException(message: message)
        case "ApplicationDoesNotExistException":
            self = .applicationDoesNotExistException(message: message)
        case "InvalidDeploymentConfigNameException":
            self = .invalidDeploymentConfigNameException(message: message)
        case "DeploymentConfigNameRequiredException":
            self = .deploymentConfigNameRequiredException(message: message)
        case "DeploymentConfigAlreadyExistsException":
            self = .deploymentConfigAlreadyExistsException(message: message)
        case "InvalidMinimumHealthyHostValueException":
            self = .invalidMinimumHealthyHostValueException(message: message)
        case "DeploymentConfigLimitExceededException":
            self = .deploymentConfigLimitExceededException(message: message)
        case "InvalidRegistrationStatusException":
            self = .invalidRegistrationStatusException(message: message)
        case "InvalidTagFilterException":
            self = .invalidTagFilterException(message: message)
        case "InstanceNameRequiredException":
            self = .instanceNameRequiredException(message: message)
        case "TagRequiredException":
            self = .tagRequiredException(message: message)
        case "InvalidTagException":
            self = .invalidTagException(message: message)
        case "TagLimitExceededException":
            self = .tagLimitExceededException(message: message)
        case "InstanceLimitExceededException":
            self = .instanceLimitExceededException(message: message)
        case "InstanceNotRegisteredException":
            self = .instanceNotRegisteredException(message: message)
        case "InvalidInstanceNameException":
            self = .invalidInstanceNameException(message: message)
        case "DeploymentGroupNameRequiredException":
            self = .deploymentGroupNameRequiredException(message: message)
        case "InvalidDeploymentGroupNameException":
            self = .invalidDeploymentGroupNameException(message: message)
        case "InstanceIdRequiredException":
            self = .instanceIdRequiredException(message: message)
        case "InstanceDoesNotExistException":
            self = .instanceDoesNotExistException(message: message)
        case "DeploymentGroupAlreadyExistsException":
            self = .deploymentGroupAlreadyExistsException(message: message)
        case "InvalidEC2TagException":
            self = .invalidEC2TagException(message: message)
        case "InvalidAutoScalingGroupException":
            self = .invalidAutoScalingGroupException(message: message)
        case "DeploymentConfigDoesNotExistException":
            self = .deploymentConfigDoesNotExistException(message: message)
        case "RoleRequiredException":
            self = .roleRequiredException(message: message)
        case "InvalidRoleException":
            self = .invalidRoleException(message: message)
        case "DeploymentGroupLimitExceededException":
            self = .deploymentGroupLimitExceededException(message: message)
        case "LifecycleHookLimitExceededException":
            self = .lifecycleHookLimitExceededException(message: message)
        case "InvalidTriggerConfigException":
            self = .invalidTriggerConfigException(message: message)
        case "TriggerTargetsLimitExceededException":
            self = .triggerTargetsLimitExceededException(message: message)
        case "InvalidAlarmConfigException":
            self = .invalidAlarmConfigException(message: message)
        case "AlarmsLimitExceededException":
            self = .alarmsLimitExceededException(message: message)
        case "InvalidAutoRollbackConfigException":
            self = .invalidAutoRollbackConfigException(message: message)
        case "InvalidLoadBalancerInfoException":
            self = .invalidLoadBalancerInfoException(message: message)
        case "InvalidDeploymentStyleException":
            self = .invalidDeploymentStyleException(message: message)
        case "InvalidBlueGreenDeploymentConfigurationException":
            self = .invalidBlueGreenDeploymentConfigurationException(message: message)
        case "InvalidEC2TagCombinationException":
            self = .invalidEC2TagCombinationException(message: message)
        case "InvalidOnPremisesTagCombinationException":
            self = .invalidOnPremisesTagCombinationException(message: message)
        case "TagSetListLimitExceededException":
            self = .tagSetListLimitExceededException(message: message)
        case "RevisionDoesNotExistException":
            self = .revisionDoesNotExistException(message: message)
        case "RevisionRequiredException":
            self = .revisionRequiredException(message: message)
        case "InvalidRevisionException":
            self = .invalidRevisionException(message: message)
        case "DescriptionTooLongException":
            self = .descriptionTooLongException(message: message)
        case "DeploymentAlreadyCompletedException":
            self = .deploymentAlreadyCompletedException(message: message)
        case "DeploymentGroupDoesNotExistException":
            self = .deploymentGroupDoesNotExistException(message: message)
        case "InvalidTimeRangeException":
            self = .invalidTimeRangeException(message: message)
        case "InvalidDeploymentStatusException":
            self = .invalidDeploymentStatusException(message: message)
        case "DeploymentConfigInUseException":
            self = .deploymentConfigInUseException(message: message)
        case "InvalidOperationException":
            self = .invalidOperationException(message: message)
        case "ApplicationAlreadyExistsException":
            self = .applicationAlreadyExistsException(message: message)
        case "ApplicationLimitExceededException":
            self = .applicationLimitExceededException(message: message)
        case "DeploymentLimitExceededException":
            self = .deploymentLimitExceededException(message: message)
        case "InvalidTargetInstancesException":
            self = .invalidTargetInstancesException(message: message)
        case "InvalidFileExistsBehaviorException":
            self = .invalidFileExistsBehaviorException(message: message)
        case "ResourceValidationException":
            self = .resourceValidationException(message: message)
        case "InvalidSortByException":
            self = .invalidSortByException(message: message)
        case "InvalidSortOrderException":
            self = .invalidSortOrderException(message: message)
        case "InvalidBucketNameFilterException":
            self = .invalidBucketNameFilterException(message: message)
        case "InvalidKeyPrefixFilterException":
            self = .invalidKeyPrefixFilterException(message: message)
        case "BucketNameFilterRequiredException":
            self = .bucketNameFilterRequiredException(message: message)
        case "InvalidDeployedStateFilterException":
            self = .invalidDeployedStateFilterException(message: message)
        case "UnsupportedActionForDeploymentTypeException":
            self = .unsupportedActionForDeploymentTypeException(message: message)
        case "DeploymentIsNotInReadyStateException":
            self = .deploymentIsNotInReadyStateException(message: message)
        case "InstanceNameAlreadyRegisteredException":
            self = .instanceNameAlreadyRegisteredException(message: message)
        case "IamArnRequiredException":
            self = .iamArnRequiredException(message: message)
        case "IamSessionArnAlreadyRegisteredException":
            self = .iamSessionArnAlreadyRegisteredException(message: message)
        case "IamUserArnAlreadyRegisteredException":
            self = .iamUserArnAlreadyRegisteredException(message: message)
        case "IamUserArnRequiredException":
            self = .iamUserArnRequiredException(message: message)
        case "InvalidIamSessionArnException":
            self = .invalidIamSessionArnException(message: message)
        case "InvalidIamUserArnException":
            self = .invalidIamUserArnException(message: message)
        case "MultipleIamArnsProvidedException":
            self = .multipleIamArnsProvidedException(message: message)
        default:
            return nil
        }
    }
}