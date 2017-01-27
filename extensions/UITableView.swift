// Header view becomes sticky instead of bouncing on overscroll
class SemiStickyHeaderTableView: UITableView {

    override func layoutSubviews() {
        super.layoutSubviews()
        if let frame = self.tableHeaderView?.frame {
            var rect: CGRect = frame
            rect.origin.y = min(36, self.contentOffset.y)
            self.tableHeaderView?.frame = rect
        }
    }

}
