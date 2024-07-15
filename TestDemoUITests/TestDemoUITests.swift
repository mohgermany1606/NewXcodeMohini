//
//  TestDemoUITests.swift
//  TestDemoUITests
//
//  Created by Mohini Gupta on 15.07.24.
//

import XCTest

final class TestDemoUITests: XCTestCase {

    func testAddButton()
    {
                
        
        let app = XCUIApplication()
        app.launch()
        
        let plusButton = app.navigationBars["Noise Makers"].buttons["Add"]
        let nameField =
        app.alerts["Add Noise Maker"].scrollViews.otherElements.collectionViews.textFields["Shaggy"]
        let addButton = app.alerts["Add Noise Maker"].scrollViews.otherElements.buttons["Add"]
        
        let addedCell = app.tables.staticTexts["Mohini"]
        plusButton.tap()
        nameField.tap()
        nameField.typeText("Mohini")
        addButton.tap()
        XCTAssertTrue(addedCell.exists)
        
        let app = app2
        app.navigationBars["Noise Makers"].buttons["Add"].tap()
        
        let app2 = app
        app2.alerts["Add Noise Maker"].scrollViews.otherElements.collectionViews/*@START_MENU_TOKEN@*/.textFields["Shaggy"]/*[[".cells.textFields[\"Shaggy\"]",".textFields[\"Shaggy\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.alerts["Add Noise Maker"].scrollViews.otherElements.buttons["Add"].tap()
        
        let mohiniStaticText = app2.tables/*@START_MENU_TOKEN@*/.staticTexts["Mohini"]/*[[".cells.staticTexts[\"Mohini\"]",".staticTexts[\"Mohini\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        mohiniStaticText.swipeLeft()
        app.tables.cells.children(matching: .other).element(boundBy: 0).swipeLeft()
        mohiniStaticText.swipeLeft()
        mohiniStaticText.swipeLeft()
        mohiniStaticText.tap()
        mohiniStaticText.tap()
        mohiniStaticText.tap()
        mohiniStaticText.tap()
        mohiniStaticText.tap()
        mohiniStaticText.tap()
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .table).element.tap()
        mohiniStaticText.tap()
        mohiniStaticText.swipeLeft()
        
        
        
    }
    
    func DeleteContent()
    {
        
    }
}
