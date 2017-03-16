
/*
 
https://github.com/phimage/ApplicationGroupKit
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.addSubview(NoticeBoardModule().view.view)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        NoticeBoardModule().present(from: self, style: UIModalTransitionStyle.flipHorizontal) { 
           print("done")
        }
//        let nav = UINavigationController(rootViewController: AdvertisementModule().view)
//            self.present(nav, animated: true) { 
//        }


        return 
        let data = SNSShareData(
            text: "testtjeiowjriowejo",
            images: [],
            urls: [URL(string:"www.google.com.tw")!]
        )

//        http://stackoverflow.com/questions/31337490/how-to-share-image-in-instagramswift
        SNSShare.post(type: .Twitter, data: data, controller: self, completion: { result in
            switch result {
            case .Success:
                print("Posted!!")
            case .Failure(let et):
                print(et)
            }
        })
        
//        AdvertisementModule().present(from: self, style: UIModalTransitionStyle.flipHorizontal) {
//           print("init")
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}




