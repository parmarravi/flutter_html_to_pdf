//
//  ViewController.swift
//  htmlpdfcoverter
//
//  Created by Ravi Parmar on 02/11/23.
//

import UIKit
import PDFKit

class ViewController: UIViewController {

    var pdfView: PDFView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create a PDFView
        pdfView = PDFView(frame: view.bounds)
        pdfView.autoScales = true
        view.addSubview(pdfView)

        // Load HTML content with CSS properties
        let htmlString = """
        <html>
        <head>
            <title>Sample HTML</title>
            <style>
                body {
                    background-color: red;
                }
            </style>
        </head>
        <body>
            <h1>Hello, World!</h1>
            <p>This is a sample HTML content with a red background color.</p>
        </body>
        </html>
        """
        let data = htmlString.data(using: .utf8)
        if let data = data {
            if let pdfDocument = PDFDocument(data: data) {
                pdfView.document = pdfDocument
            }
        }
    }
}
