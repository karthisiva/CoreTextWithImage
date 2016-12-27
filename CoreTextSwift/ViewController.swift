//
//  ViewController.swift
//  CoreTextSwift
//
//  Created by Sureshbabu Naidu on 29/11/16.
//  Copyright © 2016 Vishwak Sol pvt. ltd. All rights reserved.
//

import UIKit
import  CoreText
class ViewController: UIViewController {
    var textManger : NSTextStorage!
    var layoutManager : NSLayoutManager!
    @IBOutlet var scrollObj: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let contentURL = Bundle.main.url(forResource: "content", withExtension: "txt")
        do {
            self.textManger = try NSTextStorage(url: contentURL!, options: [:], documentAttributes: nil)
        }
        catch {
            
        }
        self.layoutManager = NSLayoutManager()
        textManger.addLayoutManager(layoutManager)
        self . ect()
         NotificationCenter.default.addObserver(self, selector: #selector(self.rotated), name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
        // Do any additional setup after loading the view, typically from a nib.
    }
    func rotated() {
        if UIDevice.current.orientation.isLandscape {
            print("Landscape")
            view.layoutIfNeeded()
        } else {
            print("Portrait")
            view.layoutIfNeeded()
        }
//        self . ect()
    }
    func ect() {
       
        var lastRenderedGlyph = 0
        var currentXOffset: CGFloat = 0
        do {
            while lastRenderedGlyph < layoutManager.numberOfGlyphs {
                let textViewFrame = CGRect(x: currentXOffset, y: CGFloat(10), width: CGFloat(self.view.bounds.width / 2), height: CGFloat(self.view.bounds.height - 20))
                let columnSize = CGSize(width: CGFloat(textViewFrame.width - 20), height: CGFloat(textViewFrame.height - 10))
                let textContainer = NSTextContainer(size: columnSize)
                layoutManager.addTextContainer(textContainer)
                // And a text view to render it
                let textView = UITextView(frame: textViewFrame, textContainer: textContainer)
                let htmlString = "<div style='margin: 0px; padding: 0px; font-size: 13px;'>புதுடெல்லி,</div><div style='margin: 0px; padding: 0px; font-size: 13px;'><br /></div><div style='margin: 0px; padding: 0px; font-size: 13px;'>கள்ள google.com   https://www.youtube.com/watch?v=LqHzHkuXRxQ நோட்டு மற்றும் கருப்பு பணத்தை ஒழிக்கும்<p> <h1>நடவடிக்கையாக 500, 1,000 ரூபாய் நோட்டுகள் செல்லாது என்று பிரதமர் நரேந்திர மோடி அறிவித்தார். இதை எதிர்த்து டெல்லியை சேர்ந்த வக்கீல்கள் விவேக்நாராயண்</h1> </p>சர்மா, சங்கம்லால் பாண்டே, தனிநபர்கள் எஸ்.முத்துக்குமார், அடில் ஆல்வி ஆகியோர் சுப்ரீம் கோர்ட்டில் பொதுநல மனுக்கள் தாக்கல் செய்தனர்.</div><div style='margin: 0px; padding: 0px; font-size: 13px;'><br /></div><div> <img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxD2QTPxW4NROWV9CB2J7DigMhpjVkCbh4FlUUt6LchrTKCP7cxxy3nU2E\" alt=\"HTML5 Icon\" style=\"width:500px;height:128px;\"> </div><div style='margin: 0px; padding: 0px; font-size: 13px;'>இந்த மனுவை விசாரித்த சுப்ரீம் கோர்ட்டு, மத்திய அரசின் அறிவிப்புக்கு தடை விதிக்க மறுப்பு தெரிவித்தது. மேலும் வழக்கு விசாரணையை வரும் நவம்பர் 25 ஆம் தேதிக்கு ஒத்திவைத்து ,மத்திய அரசு தற்போது உள்ள நெருக்கடியை சமாளிக்கும் வகையில் எடுத்துவரும் நடவடிக்கைகள் பற்றியும்,www.google.com    &amp;     &quot;  &#39;  &#8216;    &#8217;      &#8220;     &#8221; வருங்காலத்தில் எடுக்கப்போகும் நடவடிக்கைகள் பற்றியும் அட்டார்னி ஜெனரல் விரிவான அறிக்கையை 18–ந் தேதி தாக்கல் செய்ய வேண்டும் என்று நீதிபதி உத்தரவிட்டனர்.</div><div style='margin: 0px; padding: 0px; font-size: 13px;'><br /></div><div style='margin: 0px; padding: 0px; font-size: 13px;'>இந்த நிலையில், சுப்ரீம் கோர்ட்டில் மத்திய அரசு இன்று புதிய மனு ஒன்றை தாக்கல் செய்துள்ளது. அதில், ரூபாய் நோட்டுக்கள் தொடர்பாக மத்திய அரசின் முடிவுக்கு எதிராக மாநில உயர் நீதிமன்றங்கள் மற்றும் மாவட்ட கீழமை நீதிமன்றங்களில் தொடரப்படும் வழக்குகளை விசாரிக்க தடைவிதிக்க வேண்டும் என்று கோரப்பட்டுள்ளது.<div> <img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxD2QTPxW4NROWV9CB2J7DigMhpjVkCbh4FlUUt6LchrTKCP7cxxy3nU2E\" alt=\"HTML5 Icon\" style=\"width:350px;height:128px;\"> </div> இந்த மனுவை நாளைக்கு விசாரிக்க சுப்ரீம் கோர்ட் சம்மதம் தெரிவித்துள்ளது.இந்த நிலையில், சுப்ரீம் கோர்ட்டில் மத்திய அரசு இன்று புதிய மனு ஒன்றை தாக்கல் செய்துள்ளது. அதில், ரூபாய் நோட்டுக்கள் தொடர்பாக மத்திய அரசின் முடிவுக்கு எதிராக மாநில உயர் நீதிமன்றங்கள் மற்றும் மாவட்ட கீழமை நீதிமன்றங்களில் தொடரப்படும் வழக்குகளை விசாரிக்க தடைவிதிக்க வேண்டும் என்று கோரப்பட்டுள்ளது. இந்த மனுவை நாளைக்கு விசாரிக்க சுப்ரீம் கோர்ட் சம்மதம் தெரிவித்துள்ளது.இந்த நிலையில், சுப்ரீம் கோர்ட்டில் மத்திய அரசு இன்று புதிய மனு ஒன்றை தாக்கல் செய்துள்ளது. அதில், ரூபாய் நோட்டுக்கள் தொடர்பாக<div> <img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxD2QTPxW4NROWV9CB2J7DigMhpjVkCbh4FlUUt6LchrTKCP7cxxy3nU2E\" alt=\"HTML5 Icon\" style=\"width:350px;height:128px;\"> </div> மத்திய அரசின் முடிவுக்கு எதிராக மாநில உயர் நீதிமன்றங்கள் மற்றும் மாவட்ட கீழமை நீதிமன்றங்களில் தொடரப்படும் வழக்குகளை விசாரிக்க தடைவிதிக்க வேண்டும் என்று கோரப்பட்டுள்ளது. இந்த மனுவை நாளைக்கு விசாரிக்க சுப்ரீம் கோர்ட் சம்மதம் தெரிவித்துள்ளது.இந்த நிலையில், சுப்ரீம் கோர்ட்டில் மத்திய அரசு இன்று புதிய மனு ஒன்றை தாக்கல் செய்துள்ளது. அதில், ரூபாய் நோட்டுக்கள் தொடர்பாக மத்திய அரசின் முடிவுக்கு எதிராக மாநில உயர் நீதிமன்றங்கள் மற்றும் மாவட்ட கீழமை நீதிமன்றங்களில் தொடரப்படும் வழக்குகளை விசாரிக்க தடைவிதிக்க வேண்டும் என்று கோரப்பட்டுள்ளது. இந்த மனுவை நாளைக்கு விசாரிக்க சுப்ரீம் கோர்ட் சம்மதம் தெரிவித்துள்ளது.இந்த நிலையில், சுப்ரீம் கோர்ட்டில் மத்திய அரசு இன்று புதிய மனு ஒன்றை தாக்கல் செய்துள்ளது. அதில், ரூபாய் நோட்டுக்கள் தொடர்பாக மத்திய அரசின் முடிவுக்கு எதிராக மாநில உயர் நீதிமன்றங்கள் மற்றும் மாவட்ட கீழமை நீதிமன்றங்களில் தொடரப்படும் வழக்குகளை விசாரிக்க தடைவிதிக்க வேண்டும் என்று கோரப்பட்டுள்ளது. இந்த மனுவை நாளைக்கு விசாரிக்க சுப்ரீம் கோர்ட் சம்மதம் தெரிவித்துள்ளது.இந்த நிலையில், சுப்ரீம் கோர்ட்டில் மத்திய அரசு இன்று புதிய மனு ஒன்றை தாக்கல் செய்துள்ளது. அதில், ரூபாய் நோட்டுக்கள் தொடர்பாக மத்திய அரசின் முடிவுக்கு எதிராக மாநில உயர் நீதிமன்றங்கள் மற்றும் மாவட்ட கீழமை நீதிமன்றங்களில் தொடரப்படும் வழக்குகளை விசாரிக்க தடைவிதிக்க வேண்டும் என்று கோரப்பட்டுள்ளது. இந்த மனுவை நாளைக்கு விசாரிக்க சுப்ரீம் கோர்ட் சம்மதம் தெரிவித்துள்ளது.இந்த நிலையில்,<div> <img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxD2QTPxW4NROWV9CB2J7DigMhpjVkCbh4FlUUt6LchrTKCP7cxxy3nU2E\" alt=\"HTML5 Icon\" style=\"width:350px;height:128px;\"> </div> சுப்ரீம் கோர்ட்டில் மத்திய அரசு இன்று புதிய மனு ஒன்றை தாக்கல் செய்துள்ளது. அதில், ரூபாய் நோட்டுக்கள் தொடர்பாக மத்திய அரசின் முடிவுக்கு எதிராக மாநில உயர் நீதிமன்றங்கள் மற்றும் மாவட்ட கீழமை நீதிமன்றங்களில் தொடரப்படும் வழக்குகளை விசாரிக்க தடைவிதிக்க வேண்டும் என்று கோரப்பட்டுள்ளது. இந்த மனுவை நாளைக்கு விசாரிக்க சுப்ரீம் கோர்ட் சம்மதம் தெரிவித்துள்ளது.இந்த நிலையில், சுப்ரீம் கோர்ட்டில் மத்திய அரசு இன்று புதிய மனு ஒன்றை தாக்கல் செய்துள்ளது. அதில், ரூபாய் நோட்டுக்கள் தொடர்பாக மத்திய அரசின் முடிவுக்கு எதிராக மாநில உயர் நீதிமன்றங்கள் மற்றும் மாவட்ட கீழமை நீதிமன்றங்களில் தொடரப்படும் வழக்குகளை விசாரிக்க தடைவிதிக்க வேண்டும் என்று கோரப்பட்டுள்ளது. இந்த மனுவை நாளைக்கு விசாரிக்க சுப்ரீம் கோர்ட் சம்மதம் தெரிவித்துள்ளது.</div>"
                
                
                textView.attributedText = htmlString.utf8Data?.attributedString
                textView.isScrollEnabled = true
                self.scrollObj.addSubview(textView)
                // Increase the current offset
                currentXOffset += textViewFrame.width
                // And find the index of the glyph we've just rendered
                let range = layoutManager.glyphRange(for: textContainer)
                lastRenderedGlyph = range.length + range.location
    }
            
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
}
extension String {
    var utf8Data: Data? {
        return data(using: .utf8)
}
}
