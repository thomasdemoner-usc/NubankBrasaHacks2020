//
//  FirstViewController.swift
//  NubankBrasaHacks2020_2
//
//  Created by Thomas Demoner on 3/19/20.
//  Copyright © 2020 com.DemonerThomas. All rights reserved.
//

import UIKit
import Charts

class FirstViewController: UIViewController {

    @IBOutlet weak var pieChart: PieChartView!
    
    //compras
    var comprasDataEntry = PieChartDataEntry(value: 0)
    //comida
    var comidaDataEntry = PieChartDataEntry(value: 0)
    //tranpostacao
    var transDataEntry = PieChartDataEntry(value: 0)
    //contas
    var contasDataEntry = PieChartDataEntry(value: 0)
    //subscriptions
    var subsDataEntry = PieChartDataEntry(value: 0)
    
    var numberOfDataEntries = [PieChartDataEntry]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //pieChart.centerText = "Gastos"
        pieChart.holeColor = UIColor(red: 126, green: 25, blue: 183, alpha: 0)
        pieChart.entryLabelFont = NSUIFont(name: "FuturaMedium", size: 13.0)
        
        
        //compras
        comprasDataEntry.value = 67
        comprasDataEntry.label = "Compras"
        //comida
        comidaDataEntry.value = 118
        comidaDataEntry.label = "Gula"
        //tranpostacao
        transDataEntry.value = 54
        transDataEntry.label = "Trans"
        //contas
        contasDataEntry.value = 378.98
        contasDataEntry.label = "Contas"
        //subscriptions
        subsDataEntry.value = 37.94
        subsDataEntry.label = "Subs"
        
        numberOfDataEntries = [comprasDataEntry, comidaDataEntry, transDataEntry, contasDataEntry, subsDataEntry]
        
        updateChartData()
    }
    
    func updateChartData() {
        
        let chartDataSet = PieChartDataSet(entries: numberOfDataEntries, label: nil)
        
        let chartData = PieChartData(dataSet: chartDataSet)
        
        let colors = [UIColor(named:"nuVerde"), UIColor(named:"nuAzul"),UIColor(named:"nuVermelho"), UIColor(named:"nuAmarelo"),UIColor(named:"nuRosa")]
        
        chartDataSet.colors = colors as! [NSUIColor]
        
        pieChart.data = chartData
    }


}

