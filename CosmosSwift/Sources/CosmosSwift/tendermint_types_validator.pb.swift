// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tendermint/types/validator.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Tendermint_Types_ValidatorSet {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var validators: [Tendermint_Types_Validator] = []

  var proposer: Tendermint_Types_Validator {
    get {return _proposer ?? Tendermint_Types_Validator()}
    set {_proposer = newValue}
  }
  /// Returns true if `proposer` has been explicitly set.
  var hasProposer: Bool {return self._proposer != nil}
  /// Clears the value of `proposer`. Subsequent reads from it will return its default value.
  mutating func clearProposer() {self._proposer = nil}

  var totalVotingPower: Int64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _proposer: Tendermint_Types_Validator? = nil
}

struct Tendermint_Types_Validator {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var address: Data = Data()

  var pubKey: Tendermint_Crypto_PublicKey {
    get {return _pubKey ?? Tendermint_Crypto_PublicKey()}
    set {_pubKey = newValue}
  }
  /// Returns true if `pubKey` has been explicitly set.
  var hasPubKey: Bool {return self._pubKey != nil}
  /// Clears the value of `pubKey`. Subsequent reads from it will return its default value.
  mutating func clearPubKey() {self._pubKey = nil}

  var votingPower: Int64 = 0

  var proposerPriority: Int64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _pubKey: Tendermint_Crypto_PublicKey? = nil
}

struct Tendermint_Types_SimpleValidator {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var pubKey: Tendermint_Crypto_PublicKey {
    get {return _pubKey ?? Tendermint_Crypto_PublicKey()}
    set {_pubKey = newValue}
  }
  /// Returns true if `pubKey` has been explicitly set.
  var hasPubKey: Bool {return self._pubKey != nil}
  /// Clears the value of `pubKey`. Subsequent reads from it will return its default value.
  mutating func clearPubKey() {self._pubKey = nil}

  var votingPower: Int64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _pubKey: Tendermint_Crypto_PublicKey? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tendermint.types"

extension Tendermint_Types_ValidatorSet: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ValidatorSet"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "validators"),
    2: .same(proto: "proposer"),
    3: .standard(proto: "total_voting_power"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.validators) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._proposer) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.totalVotingPower) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.validators.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.validators, fieldNumber: 1)
    }
    if let v = self._proposer {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if self.totalVotingPower != 0 {
      try visitor.visitSingularInt64Field(value: self.totalVotingPower, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Tendermint_Types_ValidatorSet, rhs: Tendermint_Types_ValidatorSet) -> Bool {
    if lhs.validators != rhs.validators {return false}
    if lhs._proposer != rhs._proposer {return false}
    if lhs.totalVotingPower != rhs.totalVotingPower {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_Types_Validator: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Validator"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "address"),
    2: .standard(proto: "pub_key"),
    3: .standard(proto: "voting_power"),
    4: .standard(proto: "proposer_priority"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.address) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._pubKey) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.votingPower) }()
      case 4: try { try decoder.decodeSingularInt64Field(value: &self.proposerPriority) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.address.isEmpty {
      try visitor.visitSingularBytesField(value: self.address, fieldNumber: 1)
    }
    if let v = self._pubKey {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if self.votingPower != 0 {
      try visitor.visitSingularInt64Field(value: self.votingPower, fieldNumber: 3)
    }
    if self.proposerPriority != 0 {
      try visitor.visitSingularInt64Field(value: self.proposerPriority, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Tendermint_Types_Validator, rhs: Tendermint_Types_Validator) -> Bool {
    if lhs.address != rhs.address {return false}
    if lhs._pubKey != rhs._pubKey {return false}
    if lhs.votingPower != rhs.votingPower {return false}
    if lhs.proposerPriority != rhs.proposerPriority {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tendermint_Types_SimpleValidator: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SimpleValidator"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "pub_key"),
    2: .standard(proto: "voting_power"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._pubKey) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.votingPower) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._pubKey {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.votingPower != 0 {
      try visitor.visitSingularInt64Field(value: self.votingPower, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Tendermint_Types_SimpleValidator, rhs: Tendermint_Types_SimpleValidator) -> Bool {
    if lhs._pubKey != rhs._pubKey {return false}
    if lhs.votingPower != rhs.votingPower {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}