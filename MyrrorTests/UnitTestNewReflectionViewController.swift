//
//  UnitTestNewReflection.swift
//  Myrror
//
//  Created by Marcelo De Araújo on 12/09/22.
//

@testable import Myrror
import XCTest

class UnitTestNewReflectionViewController: XCTestCase {

    let sut = NewReflectionViewController()

    func testNavigationTitle() throws {

        XCTAssertEqual(sut.navigationTitle, "O que aprendi?")
    }

    func testConfirmationButton() throws {

        let button = sut.confirmationButton

        XCTAssertEqual(button.configuration?.image, UIImage(systemName:"square.and.arrow.down"))
        XCTAssertFalse(button.translatesAutoresizingMaskIntoConstraints)
        XCTAssertEqual(button.configuration?.imagePadding, 150)
    }

    func testReflectionText() throws {

        let textField = sut.reflectionText

        XCTAssertEqual(textField.backgroundColor, UIColor.systemFill)
        XCTAssertFalse(textField.translatesAutoresizingMaskIntoConstraints)
        XCTAssertEqual(textField.layer.cornerRadius, 8)
        XCTAssertEqual(textField.frame, CGRect(x: 10, y: 10, width: 30, height: 10))
    }

    func testSubTitle() throws {

        let subTitle = sut.subTitle

        XCTAssertEqual(subTitle.font, UIFont.boldSystemFont(ofSize: 20))
        XCTAssertEqual(subTitle.text, "Como isso te faz se sentir?")
        XCTAssertFalse(subTitle.translatesAutoresizingMaskIntoConstraints)
    }

    func testBackGroundView() throws {

        let background = sut.backgroundView

        XCTAssertEqual(background.backgroundColor, UIColor.systemFill)
        XCTAssertEqual(background.layer.cornerRadius, 8)
        XCTAssertFalse(background.translatesAutoresizingMaskIntoConstraints)


    }
}
