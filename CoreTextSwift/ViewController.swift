//
//  ViewController.swift
//  CoreTextSwift
//
//  Created by Sureshbabu Naidu on 29/11/16.
//  Copyright © 2016 Vishwak Sol pvt. ltd. All rights reserved.
//

import UIKit
import  CoreText
class ViewController: UIViewController,UIScrollViewDelegate {
    var textManger : NSTextStorage!
    var layoutManager : NSLayoutManager!
    //  var textView = UITextView()
    @IBOutlet var scrollObj: UIScrollView!
    @IBOutlet var pageDots: UIPageControl!
    let htmlString = "<div>This recipe is almost identical to the one in Two Different-Width Views; however, here you use a pair of constraints to define a more complex behavior for the view widths. In this recipe, the system tries to make the red view twice as wide as the blue view, but the blue view has a 150-point minimum width. So, on iPhone in portrait the views are almost the same width, and in landscape both views are larger, but the red view is now twice as wide as the blue.\n\n</div><div>Always select the layout that works best for your app. This recipe uses a fixed 20-point margin for both the top and bottom. This keeps the constraint logic as simple as possible, and still looks reasonable in all orientations. Other layouts may work better with a fixed 8-point margin.</div><div>You can extend this design by adding additional constraints—for example, by using three constraints. A required constraint to set the red view’s minimum width. A high-priority optional constraint to set the blue view’s minimum width, and a lower priority optional constraint to set the preferred size ratio between the views.</div>"
    
    
    
    var scrollHeight = 0
    var scrollWidth = 0
    var imageWidth = 0
    var lastRenderedGlyph = 0
    var columnIndex  = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textManger = NSTextStorage(string:htmlString )
        self.layoutManager = NSLayoutManager()
        textManger.addLayoutManager(layoutManager)
        scrollHeight = Int(self.scrollObj.bounds.size.height - 20)
        scrollWidth = Int(self.scrollObj.bounds.size.width / 3 - 10)
        imageWidth = Int(scrollWidth + scrollWidth )
        self . ect()
        
        //        var previousView: UIView?
        //        var columnIndex  = 0
        //         let scrollHeight = self.scrollObj.bounds.size.height - 20
        //        let scrollWidth = self.scrollObj.bounds.size.width / 3
        //        print(scrollHeight)
        //        for _ in 0 ..< 5 {
        //            let textView = UITextView()
        //            textView.translatesAutoresizingMaskIntoConstraints = false
        //            textView.backgroundColor = .green
        //            textView.isScrollEnabled = false
        //            scrollObj.addSubview(textView)
        //
        //            if let previousView = previousView {
        //                textView.leadingAnchor.constraint(equalTo: previousView.trailingAnchor, constant: 10).isActive = true
        //            } else {
        //                textView.leadingAnchor.constraint(equalTo: scrollObj.leadingAnchor, constant: 0).isActive = true
        //            }
        //
        //            NSLayoutConstraint.activate([
        //                textView.heightAnchor.constraint(equalToConstant: scrollHeight),
        //                textView.widthAnchor.constraint(equalToConstant: scrollWidth),
        //                textView.topAnchor.constraint(equalTo: scrollObj.topAnchor, constant: 10),
        //                textView.bottomAnchor.constraint(equalTo: scrollObj.bottomAnchor, constant: -10)
        //                ])
        //
        //            previousView = textView
        //            columnIndex = columnIndex + 1
        //
        //        }
        //        self.scrollObj.contentSize = CGSize(width: columnIndex*300, height: columnIndex*200)
        
        
    }
    override func viewWillLayoutSubviews(){
        self.view.layoutIfNeeded()
        //self .ect()
    }
    
    func ect() {
        
        var temp = 0
        for view in scrollObj.subviews{
            temp = temp + 1
            let index = 100 + temp
            if index == view.tag || view.tag == 999{
                view .removeFromSuperview()
            }else{
                
            }
            //view .removeFromSuperview()
        }
        do {
            var textViewFrame = CGRect()
            var previousAnchor = scrollObj.leadingAnchor
            let imageView = UIImageView()
            let  columnSize = CGSize(width:scrollWidth , height: scrollHeight)
            
            while lastRenderedGlyph < layoutManager.numberOfGlyphs  {
                let textContainer = NSTextContainer(size: columnSize)
                layoutManager.addTextContainer(textContainer)
                
                if columnIndex == 1{
                    textViewFrame = CGRect(x: 0, y: 0, width: CGFloat(scrollWidth), height: CGFloat(scrollHeight))
                    
                }else if columnIndex == 2{
                    textViewFrame = CGRect(x: 0, y: 0, width: CGFloat(scrollWidth), height: CGFloat(scrollHeight))
                    
                }else{
                    textViewFrame = CGRect(x: 0, y: 0, width: CGFloat(scrollWidth), height: CGFloat(scrollHeight))
                }
                // And a text view to render it
                let textView = UITextView(frame: textViewFrame, textContainer: textContainer)
                // And a text view to render it
                textView.attributedText = htmlString.utf8Data?.attributedStringColumnWise
                textView.isScrollEnabled = false
                textView.translatesAutoresizingMaskIntoConstraints = false
                textView.backgroundColor = .green
                self.scrollObj.addSubview(textView)
                
                if columnIndex == 0 {
                    NSLayoutConstraint.activate([
                        textView.leadingAnchor.constraint(equalTo: previousAnchor, constant: 10),
                        textView.widthAnchor.constraint(equalToConstant: CGFloat(scrollWidth)),
                        textView.topAnchor.constraint(equalTo: scrollObj.topAnchor, constant: 10),
                        textView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -30)
                        ])
                }else if columnIndex == 1 {
                    
                    imageView.translatesAutoresizingMaskIntoConstraints = false
                    imageView.image = UIImage(named: "zombie2.jpg")
                    scrollObj.addSubview(imageView)
                    NSLayoutConstraint.activate([
                        imageView.leadingAnchor.constraint(equalTo: previousAnchor, constant: 10),
                        imageView.widthAnchor.constraint(equalToConstant: CGFloat(imageWidth)),
                        imageView.heightAnchor.constraint(equalToConstant: CGFloat(400)),
                        imageView.topAnchor.constraint(equalTo: scrollObj.topAnchor, constant: 10)
                        ])
                    
                    NSLayoutConstraint.activate([
                        textView.leadingAnchor.constraint(equalTo: previousAnchor, constant: 10),
                        textView.widthAnchor.constraint(equalToConstant: CGFloat(scrollWidth)),
                        textView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
                        textView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -30)
                        ])
                }else if columnIndex == 2{
                    NSLayoutConstraint.activate([
                        textView.leadingAnchor.constraint(equalTo: previousAnchor, constant: 10),
                        textView.widthAnchor.constraint(equalToConstant: CGFloat(scrollWidth-10)),
                        textView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
                        textView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -30)
                        ])
                }else{
                    NSLayoutConstraint.activate([
                        textView.leadingAnchor.constraint(equalTo: previousAnchor, constant: 10),
                        textView.widthAnchor.constraint(equalToConstant: CGFloat(scrollWidth)),
                        textView.topAnchor.constraint(equalTo: scrollObj.topAnchor, constant: 10),
                        textView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -30)
                        ])
                }
                
                previousAnchor = textView.trailingAnchor
                textView.tag = 100 + columnIndex
                imageView.tag = 999
                columnIndex = columnIndex + 1
                let range = layoutManager.glyphRange(for: textContainer)
                lastRenderedGlyph = range.length + range.location
                
            }
            previousAnchor.constraint(equalTo: scrollObj.trailingAnchor, constant: -10).isActive = true
            
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
extension Data {
    var attributedString: NSAttributedString? {
        do {
            return try NSAttributedString(data: self, options:[NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType, NSCharacterEncodingDocumentAttribute: String.Encoding.utf8.rawValue], documentAttributes: nil)
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        return nil
    }
    
    var attributedStringColumnWise: NSMutableAttributedString? {
        do {
            let fontval = UIFont.systemFont(ofSize: 18)
            
            let   attrStr = try NSMutableAttributedString(data: self, options: [NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType,NSCharacterEncodingDocumentAttribute:String.Encoding.utf8.rawValue], documentAttributes: nil)
            attrStr.addAttributes([NSFontAttributeName: fontval
                ,NSForegroundColorAttributeName:UIColor.black], range: NSRange(location: 0, length: attrStr.length))
            return attrStr
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        return nil
    }
}
extension String {
    var utf8Data: Data? {
        return data(using: .utf8)
    }
}
