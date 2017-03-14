

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.addSubview(NoticeBoardModule().view.view)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
//        NoticeBoardModule().present(from: self, style: UIModalTransitionStyle.flipHorizontal) { 
//           print("done")
//        }
        let nav = UINavigationController(rootViewController: AdvertisementModule().view)
            self.present(nav, animated: true) { 
            
        }
//        AdvertisementModule().present(from: self, style: UIModalTransitionStyle.flipHorizontal) {
//           print("init")
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}




