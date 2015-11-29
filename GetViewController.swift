import UIKit

class GetViewController: UIViewController {

    @IBOutlet weak var splashImage: UIImageView!
    @IBOutlet weak var splashButton: UIButton!
    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var newMessageLabel: UILabel!
    @IBOutlet weak var locationLabel1: UILabel!
    @IBOutlet weak var encouragementLabel: UILabel!
    @IBOutlet weak var embarrassmentLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        splashButton.layer.cornerRadius = CGFloat(15)
        okButton.layer.cornerRadius = CGFloat(15)
        embarrassmentLabel.alpha = 0.0
        encouragementLabel.alpha = 0.0
        okButton.alpha = 0.0
        
        let filePath = NSBundle.mainBundle().pathForResource("stories",ofType:"json")
        let optData =  NSData(contentsOfFile:filePath!)
        
        var stories = [String]()
        var locations = [String]()
        var encouragements = [String]()
        var embarrassments = [String]()

        do {
            let json = try NSJSONSerialization.JSONObjectWithData(optData!, options: .AllowFragments)
            
            if let blogs = json["stories"] as? [[String: AnyObject]] {
                for blog in blogs {
                    if let name = blog["name"] as? String {
                        stories.append(name)
                    }
                    if let location = blog["location"] as? String {
                        locations.append(location)
                    }
                    if let location = blog["encouragement"] as? String {
                        encouragements.append(location)
                    }
                    if let location = blog["embarrassment"] as? String {
                        embarrassments.append(location)
                    }
                }
            }
        } catch {
            print("error serializing JSON: \(error)")
        }
        
        
        let randomIndex = Int(arc4random_uniform(UInt32(stories.count)))
        
        encouragementLabel.text = "\"" + encouragements[randomIndex] + "\""
        embarrassmentLabel.text = "\"" + embarrassments[randomIndex] + "\""
        locationLabel1.text = locations[randomIndex]

    }

    @IBAction func splashButtonClick(sender: UIButton) {
        
        UIView.animateWithDuration(1.0, animations: {
            //self.splashImage.alpha = 0.0
            self.splashButton.alpha = 0.0
            self.newMessageLabel.alpha = 0.0
            self.locationLabel1.alpha = 0.0
            self.encouragementLabel.alpha = 1.0
            self.embarrassmentLabel.alpha = 1.0
            self.okButton.alpha = 1.0
        })
        
    }


    @IBAction func okButton(sender: UIButton) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
