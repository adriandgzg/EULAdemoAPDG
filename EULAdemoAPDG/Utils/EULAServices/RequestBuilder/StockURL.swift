//
//  StockURL.swift
//  SACM
//
//  Created by Adrian Dominguez Gómez on 04/12/19.
//  Copyright © 2019 Adrián Pascual Domínguez. All rights reserved.
//

import Foundation

public typealias blckChangeHeader = () -> (user:String, psw:String)

public struct stockURL {
    //MARK: - L O G I N
    static let token                    = "AutenticationConsumer"
    static let login                    = "LoginUser"
    static let createAccount            = "GetRegistro"
    static let getBalance               = "GetAccountBalance"
    static let getMovements             = "GetMovements"
    static let getContrasena            = "GetContrasena"
    static let getPreTrarjeta           = "GetPreTrarjeta"
    static let getDataSpei              = "GetDataSpei"
    static let getBankAccounts          = "GetBankAccounts"
    static let GetRetiro                = "GetRetiro"
    static let TransferOtherUsers       = "TransferOtherUsers"
    static let GetNivel1                = "GetNivel1"
    static let SetPhoneNumber           = "SetPhoneNumber"
    static let PinConfirmPhoneNumber    = "PinConfirmPhoneNumber"
    static let GetLadasPhone            = "GetLadasPhone"
    static let GetNivel3DB              = "GetNivel3DB"
    static let GetBank                  = "GetBank"
    static let GetCatIden               = "GetCatIden"
    static let GetNivel3RFC             = "GetNivel3RFC"
    static let GetNivel4                = "GetNivel4"
    static let GetListPais              = "GetListPais"
    static let GetLevelUp               = "GetLevelUp"
    static let GetCreateBankAccount     = "GetCreateBankAccount"
    static let GetNivel2Iden            = "GetNivel2Iden"
    static let GetPerfil                = "GetPerfil"
    static let CheckAppKey              = "CheckAppKey"
    static let DownDispAppKey           = "DownDispAppKey"
    static let SetPhoneNumberApp        = "SetPhoneNumberApp"
    static let PinConfirmPhoneNumberApp = "PinConfirmPhoneNumberApp"
    static let getServices              = "GetServicios"
    static let GetDetServicios          = "GetDetServicios"
    static let Pagoservicios            = "Pagoservicios"
    static let GetActTarjeta            = "GetActTarjeta"
    static let GetReemplazoTarjeta      = "GetReemplazoTarjeta"
    static let GetNipTarjeta            = "GetNipTarjeta"
    static let GetStatusTarjeta         = "GetStatusTarjeta"
    static let GetABTarjeta             = "GetABTarjeta"
    static let GetOTP                   = "GetOTP"
    static let GetBitrusDeposito        = "GetBitrusDeposito"
    static let GetSendEmail             = "GetSendEmail"
    static let GetContrato              = "GetContrato"
    static let GetTiendasPaynet         = "GetTiendasPaynet"
    static let GetSolicitaReemplazo     = "GetSolicitaReemplazo"
    static let GetPreferences           = "GetPreferences"
    static let GetUpdatePreferences     = "GetUpdatePreferences"
    
    }


