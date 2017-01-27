extension UIImageView {

    // BEWARE: requires UIImage extensions
    // Assign to this to ensure your image is always square (width is ignored)
    var resizedSquareImage:UIImage? {
        set {
            if let image = newValue{
                let size = CGSizeMake(self.frame.height, self.frame.height)
                self.image = UIImage.resizeImage(image, toTheSize: size)
            }
        }

        get {
            return self.image
        }
    }

    // BEWARE: requires UIImage extensions
    // Assign to this to ensure your image is always square (width is ignored)
    var resizedCircleImage:UIImage? {
        set {
            if let image = newValue{
                let size = CGSizeMake(self.frame.height, self.frame.height)
                self.image = UIImage.resizeImage(image, toTheSize: size)
                self.layer.cornerRadius = frame.height / 2
                self.layer.masksToBounds = true
            }
        }

        get {
            return self.image
        }
    }

    // Assign to this to ensure your image is centered before aspect fill is applied
    var centerFillCropImage:UIImage? {
        set {
            if let image = newValue {
                self.image = image
                self.contentMode = .ScaleAspectFill
                self.layer.mask?.frame = self.frame
            }
        }

        get {
            return self.image
        }
    }

}
