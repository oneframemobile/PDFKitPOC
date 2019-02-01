//
//  ViewController.swift
//  SamplePDFKit
//
//  Created by Veli Bacik on 1.02.2019.
//  Copyright © 2019 Veli Bacik. All rights reserved.
//

import UIKit
import PDFKit

class ViewController: UIViewController {
    @IBOutlet weak var pdfView: PDFView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPDFView()
    }
    func setupPDFView(){
    guard let path = Bundle.main.path(forResource: "oneframe", ofType: "pdf") else { return }
        let url = URL(fileURLWithPath: path)
        guard let pdfDocument = PDFDocument(url: url) else { return }
        pdfView.displayMode = .singlePageContinuous
        pdfView.autoScales = false
        pdfView.displayDirection = .horizontal
        pdfView.document = pdfDocument
    }
}

