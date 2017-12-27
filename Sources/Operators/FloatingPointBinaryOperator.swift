//
//  FloatingPointBinaryOperator.swift
//  Expression
//
//  Created by Michael Pangburn on 12/16/17.
//  Copyright © 2017 Michael Pangburn. All rights reserved.
//

import Foundation


/// An operator for performing arithmetic on floating point types.
public struct FloatingPointBinaryOperator<T: FloatingPointOperandProtocol>: FloatingPointBinaryOperatorProtocol {
    public typealias Operand = T
    public typealias Result = T

    public let identifier: String
    public let apply: (Operand, Operand) -> Result
    public let precedence: BinaryOperatorPrecedence
    public let associativity: BinaryOperatorAssociativity
    public let isCommutative: Bool

    public init(identifier: String, apply: @escaping (Operand, Operand) -> Result, precedence: BinaryOperatorPrecedence, associativity: BinaryOperatorAssociativity, isCommutative: Bool) {
        self.identifier = identifier
        self.apply = apply
        self.precedence = precedence
        self.associativity = associativity
        self.isCommutative = isCommutative
    }
}