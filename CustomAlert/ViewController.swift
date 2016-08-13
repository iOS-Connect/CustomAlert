import UIKit

class ViewController: UIViewController {


    @IBAction func showAlert(sender: UIButton) {

        let alert = UIAlertController(
            title: "Alert",
            message: "Hello Alert",
            preferredStyle: .Alert)
        let ok = UIAlertAction(
            title: "OK",
            style: .Default) { (_) in
                self.dismissViewControllerAnimated(
                    true,
                    completion: nil)
        }
        alert.addAction(ok)
        let superView = alert.view
        superView.backgroundColor = .purpleColor()
        let image = UIImage(named: "images.jpeg")
        let imageView = UIImageView(image: image)
        superView.addSubview(imageView)
        presentViewController(alert,
                              animated: true,
                              completion: nil)
    }

    override func prepareForSegue(
        segue: UIStoryboardSegue,
        sender: AnyObject?) {

        let dest = segue.destinationViewController as! CustomAlert
        dest.action = {
            self.dismissViewControllerAnimated(
                true,
                completion: nil)
        }
        dest.alertTitle = "Alert"
        dest.alertMessage = "Hello Alert"
    }

}











