import SpriteKit

final class SFButton: SKNode {
    private var model: SFButtonModelProtocol!
    private var viewModel: SFButtonViewModelProtocol!
    
    var text: String {
        get {
            return self.viewModel.getText()
        }
        set(value) {
            self.viewModel.setText(value)
        }
    }
    
    var fillColor: UIColor {
        get {
            return self.viewModel.getFillColor()
        }
        set(value) {
            self.viewModel.setFillColor(value)
        }
    }
    
    override init() {
        super.init()
        self.setupBindings()
        self.setupCurrentNode()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) \(NSLocalizedString("error_009", comment: ""))")
    }
    
    /// ViewクラスにViewModelとModelを関連付ける
    private func setupBindings() {
        self.model = SFButtonModel() as SFButtonModelProtocol
        self.viewModel = SFButtonViewModel(self.model) as SFButtonViewModelProtocol
    }
    
    /// 親ノードのセッティング
    private func setupCurrentNode() {
        self.model.button.addChild(self.model.label)
        self.addChild(self.model.button)
        // ボタンにイベントを追加する
        self.isUserInteractionEnabled = true
    }
    
    func setAutoLayout(_ attribute: SKNode.layout, toNode: SKNode,_ toAttribute: SKNode.layout) {
        if attribute == .top && toAttribute == .top  {
            self.position.y = toNode.position.y
        }
    }
    
    /// 画面から指が離れた時のイベント処理
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("button tap")
        print("Y=\(self.position.y)")
        print("X=\(self.position.x)")
        print("width=\(self.frame.width)")
        print("height=\(self.frame.height)")
        print("btnY=\(self.model.button.position.y)")
        print("btnX=\(self.model.button.position.x)")
        print("btnWidth=\(self.model.button.frame.width)")
        print("btnHeight=\(self.model.button.frame.height)")
    }
}
