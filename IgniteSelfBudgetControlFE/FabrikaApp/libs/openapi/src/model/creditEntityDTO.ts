/**
 * OpenAPI definition
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { AccountDTO } from './accountDTO';


export interface CreditEntityDTO { 
    id?: number;
    creditorAccount?: AccountDTO;
    debtorAccount?: AccountDTO;
    amount?: number;
    interestRate?: number;
    startDate?: string;
    endDate?: string;
}

