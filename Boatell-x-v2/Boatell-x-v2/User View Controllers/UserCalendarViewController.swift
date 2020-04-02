//
//  UserCalendarViewController.swift
//  Boatell-x-v2
//
//  Created by Austin Potts on 4/1/20.
//  Copyright © 2020 Potts Evolvements. All rights reserved.
//

import UIKit
import FSCalendar

class UserCalendarViewController: UIViewController {

    fileprivate weak var calendar: FSCalendar!
    @IBOutlet var detailsView: UIView!
    @IBOutlet var serviceNotesTextField: UITextView!
    @IBOutlet var confirmAppointmentButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // button
        confirmAppointmentButton.layer.cornerRadius = 20
        
        
        //Details About Appointment
        detailsView.layer.cornerRadius = 20
        serviceNotesTextField.layer.cornerRadius = 20

        // Do any additional setup after loading the view.
        let calendar = FSCalendar(frame: CGRect(x: 0, y: 0, width: 320, height: 300))
        calendar.register(FSCalendarCell.self, forCellReuseIdentifier: "CELL")
        calendar.dataSource = self
        calendar.delegate = self
        calendar.backgroundColor = .white
        calendar.layer.cornerRadius = 20
        calendar.layer.shadowRadius = 20
        calendar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(calendar)
        self.calendar = calendar
        
        calendar.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -240).isActive = true
      //  calendar.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        calendar.heightAnchor.constraint(equalToConstant: 355).isActive = true
        calendar.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


// MARK: - FSCalendar Delegation

extension UserCalendarViewController: FSCalendarDataSource, FSCalendarDelegate {

    func calendar(_ calendar: FSCalendar, cellFor date: Date, at position: FSCalendarMonthPosition) -> FSCalendarCell {
        let cell = calendar.dequeueReusableCell(withIdentifier: "CELL", for: date, at: position)
        
        return cell
    }

}
