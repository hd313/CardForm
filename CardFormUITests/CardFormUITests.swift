

//
//  CardFormUITests.swift
//  CardFormUITests
//
//  Created by Hannah Cohn on 11/20/15.
//  Copyright © 2015 Hellosunschein. All rights reserved.
//

import XCTest

class CardFormUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCompleteSubmission() {
        // Testing if all information correct able to click Submit and OK! buttons
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("4111111111111111")
        
        // Tap expiration date field
        let mmYyTextField = app.textFields["MM/YY"]
        mmYyTextField.tap()
        
        // Enter expiration date
        mmYyTextField.typeText("0216")
        
        // Tap CCV field
        let ccvTextField = app.textFields["CCV"]
        ccvTextField.tap()
        
        // Enter CCV number
        ccvTextField.typeText("123")
        app.buttons["Submit"].tap()
    }
    
    func testAmexAllValid1() {
        // Test all valid American Express information
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("378282246310005")
        
        // Tap expiraiton date field
        let mmYyTextField = app.textFields["MM/YY"]
        mmYyTextField.tap()
        
        // Enter expiration date
        mmYyTextField.typeText("0216")
        
        // Tap CCV field
        let ccvTextField = app.textFields["CCV"]
        ccvTextField.tap()
        
        // Enter CCV Number
        ccvTextField.typeText("1235")
        
        // Tap Submit button
        app.buttons["Submit"].tap()
        
        // Check alert message
        XCTAssert(app.alerts.element.staticTexts["You've a card with the following information: \n\n Type: Amex   Number: *** ****** 310005   Expiration Date: 02/16   CVV: 1235"].exists)
        
    }
    
    func testAmexAllValid2(){
        // Test all valid American Express information
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("371449635398431")
        
        // Tap expiraiton date field
        let mmYyTextField = app.textFields["MM/YY"]
        mmYyTextField.tap()
        
        // Enter expiration date
        mmYyTextField.typeText("1118")
        
        // Tap CCV field
        let ccvTextField = app.textFields["CCV"]
        ccvTextField.tap()
        
        // Enter CCV Number
        ccvTextField.typeText("4358")
        
        // Tap Submit button
        app.buttons["Submit"].tap()
        
        // Check alert message
        XCTAssert(app.alerts.element.staticTexts["You've a card with the following information: \n\n Type: Amex   Number: *** ****** 398431   Expiration Date: 11/18   CVV: 4358"].exists)
    }
    
    func testDiscoverAllValid1() {
        // Test all valid Discover information
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("6011111111111117")
        
        // Tap expiraiton date field
        let mmYyTextField = app.textFields["MM/YY"]
        mmYyTextField.tap()
        
        // Enter expiration date
        mmYyTextField.typeText("0319")
        
        // Tap CCV field
        let ccvTextField = app.textFields["CCV"]
        ccvTextField.tap()
        
        // Enter CCV Number
        ccvTextField.typeText("957")
        
        // Tap Submit button
        app.buttons["Submit"].tap()
        
        // Check alert message
        XCTAssert(app.alerts.element.staticTexts["You've a card with the following information: \n\n Type: Discover   Number: **** **** **** 1117   Expiration Date: 03/19   CVV: 957"].exists)
    }
    func testDiscoverAllValid2() {
        // Test all valid Discover information
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("6011000990139424")
        
        // Tap expiraiton date field
        let mmYyTextField = app.textFields["MM/YY"]
        mmYyTextField.tap()
        
        // Enter expiration date
        mmYyTextField.typeText("0617")
        
        // Tap CCV field
        let ccvTextField = app.textFields["CCV"]
        ccvTextField.tap()
        
        // Enter CCV Number
        ccvTextField.typeText("356")
        
        // Tap Submit button
        app.buttons["Submit"].tap()
        
        // Check alert message
        XCTAssert(app.alerts.element.staticTexts["You've a card with the following information: \n\n Type: Discover   Number: **** **** **** 9424   Expiration Date: 06/17   CVV: 356"].exists)
    }
    func testJCBAllValid1() {
        // Test all valid JCB information
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("3530111333300000")
        
        // Tap expiraiton date field
        let mmYyTextField = app.textFields["MM/YY"]
        mmYyTextField.tap()
        
        // Enter expiration date
        mmYyTextField.typeText("1215")
        
        // Tap CCV field
        let ccvTextField = app.textFields["CCV"]
        ccvTextField.tap()
        
        // Enter CCV Number
        ccvTextField.typeText("610")
        
        // Tap Submit button
        app.buttons["Submit"].tap()
        
        // Check alert message
        XCTAssert(app.alerts.element.staticTexts["You've a card with the following information: \n\n Type: JCB   Number: **** **** **** 0000   Expiration Date: 12/15   CVV: 610"].exists)
    }
    func testJCBAllValid2() {
        // Test all valid JCB information
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("3566002020360505")
        
        // Tap expiraiton date field
        let mmYyTextField = app.textFields["MM/YY"]
        mmYyTextField.tap()
        
        // Enter expiration date
        mmYyTextField.typeText("0820")
        
        // Tap CCV field
        let ccvTextField = app.textFields["CCV"]
        ccvTextField.tap()
        
        // Enter CCV Number
        ccvTextField.typeText("131")
        
        // Tap Submit button
        app.buttons["Submit"].tap()
        
        // Check alert message
        XCTAssert(app.alerts.element.staticTexts["You've a card with the following information: \n\n Type: JCB   Number: **** **** **** 0505   Expiration Date: 08/20   CVV: 131"].exists)
    }
    func testMastercardAllValid1() {
        // Test all valid American Express information
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("5555555555554444")
        
        // Tap expiraiton date field
        let mmYyTextField = app.textFields["MM/YY"]
        mmYyTextField.tap()
        
        // Enter expiration date
        mmYyTextField.typeText("0116")
        
        // Tap CCV field
        let ccvTextField = app.textFields["CCV"]
        ccvTextField.tap()
        
        // Enter CCV Number
        ccvTextField.typeText("708")
        
        // Tap Submit button
        app.buttons["Submit"].tap()
        
        // Check alert message
        XCTAssert(app.alerts.element.staticTexts["You've a card with the following information: \n\n Type: Mastercard   Number: **** **** **** 4444   Expiration Date: 01/16   CVV: 708"].exists)
    }
    func testMastercardAllValid2() {
        // Test all valid American Express information
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("5105105105105100")
        
        // Tap expiraiton date field
        let mmYyTextField = app.textFields["MM/YY"]
        mmYyTextField.tap()
        
        // Enter expiration date
        mmYyTextField.typeText("0719")
        
        // Tap CCV field
        let ccvTextField = app.textFields["CCV"]
        ccvTextField.tap()
        
         // Enter CCV Number
        ccvTextField.typeText("262")
        
        // Tap Submit button
        app.buttons["Submit"].tap()
        
        // Check alert message
        XCTAssert(app.alerts.element.staticTexts["You've a card with the following information: \n\n Type: Mastercard   Number: **** **** **** 5100   Expiration Date: 07/19   CVV: 262"].exists)
    }
    func testVisa16AllValid1() {
        // Test all valid American Express information
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("4111111111111111")
        
        // Tap expiraiton date field
        let mmYyTextField = app.textFields["MM/YY"]
        mmYyTextField.tap()
        
        // Enter expiration date
        mmYyTextField.typeText("0521")
        
        // Tap CCV field
        let ccvTextField = app.textFields["CCV"]
        ccvTextField.tap()
        
        // Enter CCV Number
        ccvTextField.typeText("957")
        
        // Tap Submit button
        app.buttons["Submit"].tap()
        
        // Check alert message
        XCTAssert(app.alerts.element.staticTexts["You've a card with the following information: \n\n Type: Visa   Number: **** **** **** 1111   Expiration Date: 05/21   CVV: 957"].exists)
    }
    
    func testVisa13AllValid2() {
        // Test all valid Visa information
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("4222222222222")
        
        // Tap expiraiton date field
        let mmYyTextField = app.textFields["MM/YY"]
        mmYyTextField.tap()
        
        // Enter expiration date
        mmYyTextField.typeText("1022")
        
        // Tap CCV field
        let ccvTextField = app.textFields["CCV"]
        ccvTextField.tap()
        
        // Enter CCV Number
        ccvTextField.typeText("422")
        
        // Tap Submit button
        app.buttons["Submit"].tap()
        
        // Check alert message
        XCTAssert(app.alerts.element.staticTexts["You've a card with the following information: \n\n Type: Visa   Number: **** **** 22222   Expiration Date: 10/22   CVV: 422"].exists)
    }
    func testVisa16AllValid3() {
        // Test all valid Visa information
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("4012888888881881")
        
        // Tap expiraiton date field
        let mmYyTextField = app.textFields["MM/YY"]
        mmYyTextField.tap()
        
        // Enter expiration date
        mmYyTextField.typeText("0429")
        
        // Tap CCV field
        let ccvTextField = app.textFields["CCV"]
        ccvTextField.tap()
        
        // Enter CCV Number
        ccvTextField.typeText("323")
        
        // Tap Submit button
        app.buttons["Submit"].tap()
        
        // Check alert message
        XCTAssert(app.alerts.element.staticTexts["You've a card with the following information: \n\n Type: Visa   Number: **** **** **** 1881   Expiration Date: 04/29   CVV: 323"].exists)
    }

    func testInvalidNumberDinersClub1() {
        // Test invalid type/number: Diners Club
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("30569309025904")
        
        // Fail if able enter number
        let currentText = textField.value as! String
        XCTAssertFalse(currentText.stringByReplacingOccurrencesOfString(" ", withString: "") == "30569309025904")
    }
    
    func testInvalidNumberDinersClub2() {
        // Test invalid type/number: Diners Club
        let app = XCUIApplication()
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("38520000023237")
        
        // Fail if able enter number
        let currentText = textField.value as! String
        XCTAssertFalse(currentText.stringByReplacingOccurrencesOfString(" ", withString: "") == "38520000023237")
    }
    func testInvalidNumberDankort() {
        // Test invalid type/number: Dankort
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("5019717010103742")
        
        // Fail if able enter number
        let currentText = textField.value as! String
        XCTAssertFalse(currentText.stringByReplacingOccurrencesOfString(" ", withString: "") == "5019717010103742")
    }
    func testInvalidNumberCartBlanche() {
        // Test invalid type/number: Cart Blanche
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("30569309025904")
        
        // Fail if able enter number
        let currentText = textField.value as! String
        XCTAssertFalse(currentText.stringByReplacingOccurrencesOfString(" ", withString: "") == "30569309025904")
    }
    func testInvalidNumberEnroute1() {
        // Test invalid type/number: Enroute
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("201481123699422")
        
        // Fail if able enter number
        let currentText = textField.value as! String
        XCTAssertFalse(currentText.stringByReplacingOccurrencesOfString(" ", withString: "") == "201481123699422")
    }
    func testInvalidNumberEnroute2() {
        // Test invalid type/number: Enroute
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("214983972181233")
        
        // Fail if able enter number
        let currentText = textField.value as! String
        XCTAssertFalse(currentText.stringByReplacingOccurrencesOfString(" ", withString: "") == "214983972181233")
    }
    func testInvalidNumberLaser1() {
        // Test invalid type/number: Laser
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("630495060000000000")
        
        // Fail if able enter number
        let currentText = textField.value as! String
        XCTAssertFalse(currentText.stringByReplacingOccurrencesOfString(" ", withString: "") == "630495060000000000")
    }
    func testInvalidNumberLaser2() {
        // Test invalid type/number: Laser
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("6304900017740292441")
        
        // Fail if able enter number
        let currentText = textField.value as! String
        XCTAssertFalse(currentText.stringByReplacingOccurrencesOfString(" ", withString: "") == "6304900017740292441")
    }
    func testInvalidNumberSolo1() {
        // Test invalid type/number: Solo
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
         // Enter card number
        textField.typeText("6334580500000000")
        
        // Fail if able enter number
        let currentText = textField.value as! String
        XCTAssertFalse(currentText.stringByReplacingOccurrencesOfString(" ", withString: "") == "6334580500000000")
    }
    func testInvalidNumberSolo2() {
        // Test invalid type/number: Solo
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("6767622222222222222")
        
        // Fail if able enter number
        let currentText = textField.value as! String
        XCTAssertFalse(currentText.stringByReplacingOccurrencesOfString(" ", withString: "") == "6767622222222222222")
    }
    func testInvalidNumberMadeUp1() {
        // Test invalid type/number: Made up
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("41111111111111111111")
        
        // Fail if able enter number
        let currentText = textField.value as! String
        XCTAssertFalse(currentText.stringByReplacingOccurrencesOfString(" ", withString: "") == "41111111111111111111")
    }
    func testInvalidNumberMadeUp2() {
        // Test invalid type/number: Made up
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("411111helloworld")
        
        // Fail if able enter number
        let currentText = textField.value as! String
        XCTAssertFalse(currentText.stringByReplacingOccurrencesOfString(" ", withString: "") == "411111helloworld")
    }
    
    func testInvalidExpDate1() {
        // Test invalid expiration date in past
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("5105105105105100")
        
        // Tap expiration date field
        let mmYyTextField = app.textFields["MM/YY"]
        mmYyTextField.tap()
        
        // Enter expiration date
        mmYyTextField.typeText("0213")
        
        // Fail if able to enter expiration date
        XCTAssertFalse(mmYyTextField.value as! String == "02/13")
    }
    func testInvalidExpDate2() {
        // Test invalid expiration date in past
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("5105105105105100")
        
        // Tap expiration date field
        let mmYyTextField = app.textFields["MM/YY"]
        mmYyTextField.tap()
        
        // Enter expiration date
        mmYyTextField.typeText("1102")
        
        // Fail if able to enter expiration date
        XCTAssertFalse(mmYyTextField.value as! String == "11/02")
    }
    func testInvalidExpDate3(){
        // Test invalid expiration date
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("5105105105105100")
        
        // Tap expiration date field
        let mmYyTextField = app.textFields["MM/YY"]
        mmYyTextField.tap()
        
        // Enter expiration date
        mmYyTextField.typeText("1K02")
        
        // Fail if able to enter expiration date
        XCTAssertFalse(mmYyTextField.value as! String == "1K/02")
    }
    func testInvalidCCV1(){
        // Test invalid CCV number: to long for card type
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("5555555555554444")
        
        // Tap expiration date field
        let mmYyTextField = app.textFields["MM/YY"]
        mmYyTextField.tap()
        
        // Enter expiration date
        mmYyTextField.typeText("0116")
        
        // Tap CCV field
        let ccvTextField = app.textFields["CCV"]
        ccvTextField.tap()
        
        // Enter CCV number
        ccvTextField.typeText("58375")
        
        // Fail if able to enter CCV number
        XCTAssertFalse(ccvTextField.value as! String == "58375")
    }
    func testInvalidCCV2(){
        // Test invalid CCV number: to long for card type
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("6011111111111117")
        
        // Tap expiration date field
        let mmYyTextField = app.textFields["MM/YY"]
        mmYyTextField.tap()
        
        // Enter expiration date
        mmYyTextField.typeText("0319")
        
        // Tap CCV field
        let ccvTextField = app.textFields["CCV"]
        ccvTextField.tap()
        
        // Enter CCV number
        ccvTextField.typeText("9573")
        
        // Fail if able to enter CCV number
        XCTAssertFalse(ccvTextField.value as! String == "9573")

    }
    func testInvalidCCV3(){
        // Test invalid CCV number
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("6011111111111117")
        
        // Tap expiration date field
        let mmYyTextField = app.textFields["MM/YY"]
        mmYyTextField.tap()
        
        // Enter expiration date
        mmYyTextField.typeText("0319")
        
        // Tap CCV field
        let ccvTextField = app.textFields["CCV"]
        ccvTextField.tap()
        
        // Enter CCV number
        ccvTextField.typeText("4C1H")
        
        // Fail if able to enter CCV number
        XCTAssertFalse(ccvTextField.value as! String == "4C1H")
        
    }
    
    func testGoBackDeletion(){
        // Testing ability to go back and edit field after previous field has been rendered invalid
        let app = XCUIApplication()
        
        // Tap credit card field
        let textField = app.textFields["1234 5678 9012 3456"]
        textField.tap()
        
        // Enter card number
        textField.typeText("4111111111111111")
        
        // Tap expiration date field
        let mmYyTextField = app.textFields["MM/YY"]
        mmYyTextField.tap()
        
        // Enter expiration date
        mmYyTextField.typeText("0219")
        
        // Tap CCV field
        let ccvTextField = app.textFields["CCV"]
        ccvTextField.tap()
        
        // Enter CCV number
        ccvTextField.typeText("369")
        
        // Tap credit card field
        textField.tap()
        
        // Delete card number
        app.keys["Delete"].pressForDuration(2.3);
        
        // Fail if unable to tap expiration date field
        XCTAssertTrue(mmYyTextField.enabled)
    }
}
