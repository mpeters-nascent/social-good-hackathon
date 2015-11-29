import UIKit

class GetViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        let filePath = NSBundle.mainBundle().pathForResource("stories",ofType:"json")
        let optData =  NSData(contentsOfFile:filePath!)
        
        var stories = [String]()

        do {
            let json = try NSJSONSerialization.JSONObjectWithData(optData!, options: .AllowFragments)
            
            if let blogs = json["stories"] as? [[String: AnyObject]] {
                for blog in blogs {
                    if let name = blog["name"] as? String {
                        stories.append(name)
                    }
                }
            }
        } catch {
            print("error serializing JSON: \(error)")
        }
        
        
        let randomIndex = Int(arc4random_uniform(UInt32(stories.count)))
        
        messageLabel.text = stories[randomIndex]

    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
