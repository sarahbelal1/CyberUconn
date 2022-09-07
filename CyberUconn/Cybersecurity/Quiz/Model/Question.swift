//
//  Question.swift
//
//  Created by Sarah Belal on 14/08/2022.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation
struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "Which password is the most secure?",
                 possibleAnswers: [
                    "beach123",
                    "Nqtinst6",
                    "654321",
                    "Queenofplants76*"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "A VPN is for",
                 possibleAnswers: [
                    "Virus protection",
                    "Internet privacy",
                    "Email filtering",
                    "Faster internet speed"
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "A criminal denies a user's personal files and data unless they pay them. This practice is called",
                 possibleAnswers: [
                    "Malware",
                    "Phishing",
                    "Ransomware",
                    "VPNs"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "What's the difference between 'http://' and 'https://'?",
                 possibleAnswers: [
                    "https is for select users only",
                    "'https' is a secure version of 'http'",
                    "'http' is a secure version of 'https'",
                    "There's no difference "
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "Using the same strong password on multiple sites is good practice",
                 possibleAnswers: [
                    "True. Using strong passwords is enough for security.",
                    "True. Database encryption keeps your account secure. ",
                    "False. If one site is breached then all passwords are at risk.",
                    "False. It should be stored in a password manager."
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "Which type of cyberattack comes via email?",
                 possibleAnswers: [
                    "Smishing",
                    "Phishing",
                    "Vishing",
                    "Skimming"
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "Cybercriminals target?",
                 possibleAnswers: [
                    "PII (personally identifiable information)",
                    "GID (group institution of data)",
                    "PCS (personally created security)",
                    "ITS (information technology services)"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "Which UConn department handles cybersecurity?",
                 possibleAnswers: [
                    "Bursar Services",
                    "Police Department",
                    "Communications",
                    "Information Technology"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "Your computer has been infected with ransomware and the hacker is demanding $2000 to release it. What do you do?",
                 possibleAnswers: [
                    "Restart computer",
                    "Pay the Ransom and get your files back",
                    "Disconnect your computer from the network and contact IT",
                    "Refuse payment and leave computer"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "Your computer is now clear of ransomware and your ready to use your computer again. What will you do first?",
                 possibleAnswers: [
                    "Continue working as normal",
                    "Restart your computer",
                    "Backup the data so you can access it anywhere",
                    "Nothing, everythings safe now"
                 ],
                 correctAnswerIndex: 2),
    ]
}
