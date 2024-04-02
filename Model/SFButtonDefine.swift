final class SFButtonDefine {
    
    /// イベントの種類の列挙型
    enum eventType: String {
        /// 未指定
        case none = "None"
        /// ボタンに触れた瞬間に呼び出される
        case touchDown = "TouchDown"
        /// ボタンを押して指を離さないままボタンの外に移動し、再びボタンのそばに戻ってきたときに呼び出される
        case touchDragEnter = "TouchDragEnter"
        /// ボタンを押して指を離さないまま外側に移動したときに呼び出される
        case touchDragExit = "TouchDragExit"
        /// ボタンを押したあとにボタンの遠くで指を離したときに呼び出される
        case touchUpOutside = "TouchUpOutside"
    }
    
    /// ボタンの順序
    enum buttonOrder: String {
        /// 未指定
        case none = "None"
        /// 1つ目のボタン
        case primary = "Primary"
        /// 2つ目のボタン
        case secondary = "Secondary"
        /// 3つ目のボタン
        case tertiary = "Tertiary"
        /// 4つ目のボタン
        case quaternary = "Quaternary"
    }
}
