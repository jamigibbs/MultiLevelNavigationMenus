/*
 * Copyright (c) 2018, salesforce.com, inc.
 * All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause
 * For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
 
@isTest
public class menusPicklistTest {

    @testSetup static void testSetupMethod()
    {

        Menu__c menu = new Menu__c(
            Name='test menu'
        );

        insert menu;

        Menu_Item__c mi1 = new Menu_Item__c(
            Name='MI 1', URL__c='test-mi1', Position__c='1', SLDS_Icon_Position__c='left', Menu__c=menu.Id
        );

        insert mi1;

        Menu_Item__c mi2 = new Menu_Item__c(
            Name='MI 2', URL__c='test-mi2', Position__c='1', SLDS_Icon_Position__c='left', Menu__c=menu.Id,
            Menu_Item__c=mi1.Id
        );

        insert mi2;

        Menu_Item__c mi3 = new Menu_Item__c(
            Name='MI 3', URL__c='test-mi3', Position__c='1', SLDS_Icon_Position__c='left', Menu__c=menu.Id,
            Menu_Item__c=mi2.Id
        );

        insert mi3;

        Menu_Item__c mi4 = new Menu_Item__c(
            Name='MI 4', URL__c='test-mi4', Position__c='1', SLDS_Icon_Position__c='left', Menu__c=menu.Id,
            Menu_Item__c=mi3.Id
        );

        insert mi4;

        Menu_Item__c mi5 = new Menu_Item__c(
            Name='MI 5', URL__c='test-mi5', Position__c='1', SLDS_Icon_Position__c='left', Menu__c=menu.Id,
            Menu_Item__c=mi4.Id
        );

        insert mi5;

        Menu_Item__c mi6 = new Menu_Item__c(
            Name='MI 6', URL__c='test-mi6', Position__c='1', SLDS_Icon_Position__c='left', Menu__c=menu.Id,
            Menu_Item__c=mi5.Id
        );

        insert mi6;

    }

    public static testMethod void test_success_menusPicklist()
    {
        menusPicklist conp = new menusPicklist(null);
        VisualEditor.DataRow dr = conp.getDefaultValue();
        System.assertNotEquals(null, dr);
        
        VisualEditor.DynamicPickListRows dpr = conp.getValues();
        System.assert(dpr.size() > 0);
    }
    
}