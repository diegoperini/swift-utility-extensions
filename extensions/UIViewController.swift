extension UIViewController {

    func popOnce() {
        self.navigationController?.popViewControllerAnimated(true)
    }

    func dismissModal() {
        self.dismissViewControllerAnimated(false, completion: {})
    }
    
}
