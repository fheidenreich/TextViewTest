import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var scrollView: NSScrollView!
    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var textView: NSTextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // This text view doesn't have the slightly grayer control background with behind-window blending that the text field has.
        textView.drawsBackground = false
        textView.backgroundColor = .textBackgroundColor
        textView.textColor = .controlTextColor
        textView.font = NSFont.systemFont(ofSize: NSFont.systemFontSize)

        scrollView.drawsBackground = false
        // The focus ring color is also different from the text field focus ring color.
        scrollView.focusRingType = .exterior

        textView.string = "NSTextView"
        textField.stringValue = "NSTextField"
    }
}
