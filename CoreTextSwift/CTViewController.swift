//
//  CTViewController.swift
//  CoreTextSwift
//
//  Created by Sureshbabu Naidu on 23/12/16.
//  Copyright © 2016 Vishwak Sol pvt. ltd. All rights reserved.
//

import UIKit

class CTViewController: UIViewController {

    @IBOutlet var containerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
//       let path = Bundle.main.path(forResource: "zombies", ofType: "txt")!
//        let text = try! String(contentsOfFile: path, encoding: String.Encoding.utf8)
//        let text = "<div><img src=\"zombie1.jpg\" width=\"200\" height=\"200\" alt=\"\" />ஊத்துக்கோட்டை:</div><div><br /></div><div>பூண்டி ஏரியில் நீர்மட்டம் குறைந்ததை அடுத்து கிருஷ்ணா நதி நீர் பங்கீடு திட்டத்தின்படி கண்டலேறு அணையில் இருந்து கடந்த 9-ந் தேதி தண்ணீர் திறக்கப்பட்டது.</div><div><br /><br>\n</br></div><div><br /></div><div><br /></div><div>இந்த தண்ணீர் 17-ந் தேதி பூண்டி ஏரிக்கு வந்தடைந்தது. கண்டலேறு அணையில் வினாடிக்கு 1500 கனஅடி வீதம் திறக்கப்பட்ட தண்ணீர் பூண்டி ஏரிக்கு 63 கனஅடி மட்டும் வந்து சேர்ந்தது. இது படிப்படியாக குறைந்தது. நேற்று காலை தண்ணீர் வரத்து முழுவதுமாக நின்றது.</div><div><br /></div><div>ஆந்திர விவசாயிகள் தண்ணீர் திருடுவதால் பூண்டி ஏரிக்கு நீர் வரத்து முற்றிலும் தடைப்பட்டது. இதையடுத்து தண்ணீர் திருடும் விவசாயிகள் மீது நடவடிக்கை எடுக்க வேண்டும் என்று தமிழக பொதுப் பணித்துறை அதிகாரிகள் நெல்லூர் <img src=\"zombie1.jpg\" width=\"300\" height=\"600\" alt=\"\" />மாவட்ட கலெக்டர் முத்தியாலாராஜீக்கு கடிதம் எழுதினர்.</div><div><br /></div><div>இதைத் தொடர்ந்து இது பற்றி நடவடிக்கை எடுக்க ஆந்திர பொதுப்பணித்துறை அதிகாரிகளுக்கு கலெக்டர் உத்தரவிட்டார். கண்டலேறு அணையில் இருந்து தமிழக எல்லையான ‘ஜீரோ’ பாய்ண்ட் வரை கிருஷ்ணா கால்வாயில் 152 கிலோ மீட்டர் தூரத்தில் 900 சிறிய மதகுகள் உள்ளன. இவை அனைத்தும் ஆந்திர விவசாயிகள் திறந்து வைத்ததால் பூண்டி ஏரிக்கு சென்ற தண்ணீர் முழுவதும் விவசாய நிலத்திற்கு பாய்ந்து இருப்பது தெரிந்தது.</div><div><br /></div><div>இதையடுத்து ஆந்திர <img src=\"zombie1.jpg\" width=\"300\" height=\"200\" alt=\"\" />பொதுப்பணித்துறை அதிகாரிகள் கிருஷ்ணா கால்வாய் முழுவதும் ஆய்வு செய்து 900 மதகுகளையும் மூடி வருகின்றனர். மதகுகளை திறந்தால் கடும் நடவடிக்கை எடுக்கப்படும் என்று அதிகாரிகள் எச்சரித்து உள்ளனர்.</div><div><br /></div><div>இன்று காலை நிலவரப்படி கண்டலேறு அணையில் இருந்து 1700 கனஅடி வீதம் தண்ணீர் திறக்கப்படுகிறது. ஆனால் பூண்டி ஏரிக்கு தண்ணீர் வரத்து இல்லை. கிருஷ்ணா கால்வாயில் உள்ள மதகுகள் மூடப்பட்டு வருவதால் பூண்டி ஏரிக்கு தண்ணீர் வரத்து அதிகரிக்கும் என்று எதிர்பார்க்கப்படுகிறது.</div><div><br /></div><div>பூண்டி ஏரியில் இன்று காலை நிலவரப்படி 17 அடியாக (மொத்த உயரம் 35 அடி) நீர்மட்டம் பதிவானது. 83 மில்லியன் கனஅடி தண்ணீர் இருப்பு உள்ளது.</div><div><br /></div><div>கடந்த ஆண்டு இதே நாளில் கனமழை காரணமாக பூண்டி ஏரியில் 33.70 அடி தண்ணீர் இருந்தது குறிப்பிடத்தக்கது.</div><div>பூண்டி ஏரியில் தற்போது நீர்மட்டம் குறைந்து உள்ளதால் புழல் ஏரிக்கு லிங்க்கால்வாய் மூலம் தண்ணீர் திறப்பது நிறுத்தப்பட்டு உள்ளது.</div><div align=\"center\"><object height=\"360\"><embed src=\"https://www.youtube.com/embed/FH_BHLigMVQ \" height=\"360px\" width=\"100%\" /></object></div>"
        
         let text = "<div><img src=\"http://images.parenting.mdpcdn.com/sites/parenting.com/files/styles/slide/public/baby-santa-hat.jpg?itok=QXsVQcFZ\" width=\"200\" height=\"200\" alt=\"\" />ஊத்துக்கோட்டை:</div><div><br /></div><div>பூண்டி ஏரியில் நீர்மட்டம் குறைந்ததை அடுத்து கிருஷ்ணா நதி நீர் பங்கீடு திட்டத்தின்படி கண்டலேறு அணையில் இருந்து கடந்த 9-ந் தேதி தண்ணீர் திறக்கப்பட்டது.</div><div><br /><br>\n</br></div><div><br /></div><div><br /></div><div>இந்த தண்ணீர் 17-ந் தேதி பூண்டி ஏரிக்கு வந்தடைந்தது. கண்டலேறு அணையில் வினாடிக்கு 1500 கனஅடி வீதம் திறக்கப்பட்ட தண்ணீர் பூண்டி ஏரிக்கு 63 கனஅடி மட்டும் வந்து சேர்ந்தது. இது படிப்படியாக குறைந்தது. நேற்று காலை தண்ணீர் வரத்து முழுவதுமாக நின்றது.</div><div><br /></div><div>ஆந்திர விவசாயிகள் தண்ணீர் திருடுவதால் பூண்டி ஏரிக்கு நீர் வரத்து முற்றிலும் தடைப்பட்டது. இதையடுத்து தண்ணீர் திருடும் விவசாயிகள் மீது நடவடிக்கை எடுக்க வேண்டும் என்று தமிழக பொதுப் பணித்துறை அதிகாரிகள் நெல்லூர் <img src=\"http://images.parenting.mdpcdn.com/sites/parenting.com/files/styles/slide/public/baby-santa-hat.jpg?itok=QXsVQcFZ\" width=\"300\" height=\"600\" alt=\"\" />மாவட்ட கலெக்டர் முத்தியாலாராஜீக்கு கடிதம் எழுதினர்.</div><div><br /></div><div>இதைத் தொடர்ந்து இது பற்றி நடவடிக்கை எடுக்க ஆந்திர பொதுப்பணித்துறை அதிகாரிகளுக்கு கலெக்டர் உத்தரவிட்டார். கண்டலேறு அணையில் இருந்து தமிழக எல்லையான ‘ஜீரோ’ பாய்ண்ட் வரை கிருஷ்ணா கால்வாயில் 152 கிலோ மீட்டர் தூரத்தில் 900 சிறிய மதகுகள் உள்ளன. இவை அனைத்தும் ஆந்திர விவசாயிகள் திறந்து வைத்ததால் பூண்டி ஏரிக்கு சென்ற தண்ணீர் முழுவதும் விவசாய நிலத்திற்கு பாய்ந்து இருப்பது தெரிந்தது.</div><div><br /></div><div>இதையடுத்து ஆந்திர <img src=\"http://images.parenting.mdpcdn.com/sites/parenting.com/files/styles/slide/public/baby-santa-hat.jpg?itok=QXsVQcFZ\" width=\"300\" height=\"200\" alt=\"\" />பொதுப்பணித்துறை அதிகாரிகள் கிருஷ்ணா கால்வாய் முழுவதும் ஆய்வு செய்து 900 மதகுகளையும் மூடி வருகின்றனர். மதகுகளை திறந்தால் கடும் நடவடிக்கை எடுக்கப்படும் என்று அதிகாரிகள் எச்சரித்து உள்ளனர்.</div><div><br /></div><div>இன்று காலை நிலவரப்படி கண்டலேறு அணையில் இருந்து 1700 கனஅடி வீதம் தண்ணீர் திறக்கப்படுகிறது. ஆனால் பூண்டி ஏரிக்கு தண்ணீர் வரத்து இல்லை. கிருஷ்ணா கால்வாயில் உள்ள மதகுகள் மூடப்பட்டு வருவதால் பூண்டி ஏரிக்கு தண்ணீர் வரத்து அதிகரிக்கும் என்று எதிர்பார்க்கப்படுகிறது.</div><div><br /></div><div>பூண்டி ஏரியில் இன்று காலை நிலவரப்படி 17 அடியாக (மொத்த உயரம் 35 அடி) நீர்மட்டம் பதிவானது. 83 மில்லியன் கனஅடி தண்ணீர் இருப்பு உள்ளது.</div><div><br /></div><div>கடந்த ஆண்டு இதே நாளில் கனமழை காரணமாக பூண்டி ஏரியில் 33.70 அடி தண்ணீர் இருந்தது குறிப்பிடத்தக்கது.</div><div>பூண்டி ஏரியில் தற்போது நீர்மட்டம் குறைந்து உள்ளதால் புழல் ஏரிக்கு லிங்க்கால்வாய் மூலம் தண்ணீர் திறப்பது நிறுத்தப்பட்டு உள்ளது.</div><div align=\"center\"><object height=\"360\"><embed src=\"https://www.youtube.com/embed/FH_BHLigMVQ \" height=\"360px\" width=\"100%\" /></object></div>"
        let p = MarkupParser()
        let attString = p.attrString(fromMarkup: text)
        (self.view as! CTView).setAttString(attString, withImages: p.imagesArray)
        (self.view as! CTView).buildFrames()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
