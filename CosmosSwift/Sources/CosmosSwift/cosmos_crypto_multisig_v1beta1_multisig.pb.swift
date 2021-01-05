// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: cosmos/crypto/multisig/v1beta1/multisig.proto
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

/// MultiSignature wraps the signatures from a multisig.LegacyAminoPubKey.
/// See cosmos.tx.v1betata1.ModeInfo.Multi for how to specify which signers
/// signed and with which modes.
struct Cosmos_Crypto_Multisig_V1beta1_MultiSignature {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var signatures: [Data] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// CompactBitArray is an implementation of a space efficient bit array.
/// This is used to ensure that the encoded data takes up a minimal amount of
/// space after proto encoding.
/// This is not thread safe, and is not intended for concurrent usage.
struct Cosmos_Crypto_Multisig_V1beta1_CompactBitArray {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var extraBitsStored: UInt32 = 0

  var elems: Data = Data()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "cosmos.crypto.multisig.v1beta1"

extension Cosmos_Crypto_Multisig_V1beta1_MultiSignature: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MultiSignature"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "signatures"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedBytesField(value: &self.signatures) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.signatures.isEmpty {
      try visitor.visitRepeatedBytesField(value: self.signatures, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Cosmos_Crypto_Multisig_V1beta1_MultiSignature, rhs: Cosmos_Crypto_Multisig_V1beta1_MultiSignature) -> Bool {
    if lhs.signatures != rhs.signatures {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmos_Crypto_Multisig_V1beta1_CompactBitArray: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CompactBitArray"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "extra_bits_stored"),
    2: .same(proto: "elems"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.extraBitsStored) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.elems) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.extraBitsStored != 0 {
      try visitor.visitSingularUInt32Field(value: self.extraBitsStored, fieldNumber: 1)
    }
    if !self.elems.isEmpty {
      try visitor.visitSingularBytesField(value: self.elems, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Cosmos_Crypto_Multisig_V1beta1_CompactBitArray, rhs: Cosmos_Crypto_Multisig_V1beta1_CompactBitArray) -> Bool {
    if lhs.extraBitsStored != rhs.extraBitsStored {return false}
    if lhs.elems != rhs.elems {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}