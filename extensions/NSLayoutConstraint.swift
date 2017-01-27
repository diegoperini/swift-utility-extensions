extension NSLayoutConstraint {

    // Converts a layout constraint constant to actual pixel value (1 px dividers become possible)
    func convertConstantToPixelValues() {
        self.constant = self.constant / UIScreen.mainScreen().scale
    }

}
