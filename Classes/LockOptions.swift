//
//  Copyright © 2016年 xiAo_Ju. All rights reserved.
//

public struct LockOptions {

    public init() {}
    
    /// 圆的半径
    public var itemDiameter: CGFloat = 80 {
        willSet {
            LockManager.options.itemDiameter = newValue
        }
    }

    /// 选中圆大小比例
    public var scale: CGFloat = 0.3 {
        willSet {
            LockManager.options.scale = newValue
        }
    }

    /// 选中圆大小的线宽
    public var arcLineWidth: CGFloat = 1 {
        willSet {
            LockManager.options.arcLineWidth = newValue
        }
    }

    /// 密码后缀
    public var passwordKeySuffix = "" {
        willSet {
            LockManager.options.passwordKeySuffix = newValue
        }
    }

    // MARK: - 存放格式
    public var usingKeychain: Bool = false {
        willSet {
            LockManager.storage = newValue ? LockKeychain() : LockUserDefaults()
        }
    }

    // MARK: - 设置密码
    public var settingTittle = "设置密码" {
        willSet {
            LockManager.options.settingTittle = newValue
        }
    }

    /// 最低设置密码数目
    public var passwordMinCount = 4 {
        willSet {
            LockManager.options.passwordMinCount = newValue
        }
    }

    /// 密码错误次数
    public var errorTimes = 5 {
        willSet {
            LockManager.options.errorTimes = newValue
        }
    }

    /// 设置密码提示文字
    public var setPassword = "setPasswordTitle".localized {
        willSet {
            LockManager.options.setPassword = newValue
        }
    }

    /// 重绘密码提示文字
    public var secondPassword = "setPasswordAgainTitle".localized {
        willSet {
            LockManager.options.secondPassword = newValue
        }
    }

    /// 设置密码提示文字：确认
    public var confirmPassword = "请再次输入确认密码" {
        willSet {
            LockManager.options.confirmPassword = newValue
        }
    }

    /// 设置密码提示文字：再次密码不一致
    public var differentPassword = "setPasswordMismatchTitle".localized {
        willSet {
            LockManager.options.differentPassword = newValue
        }
    }
    
    /// "至少连接$个点，请重新输入"
    public var tooShortTitle = "setPasswordTooShortTitle".localized.replacingOccurrences(of: "$0", with: LockManager.options.passwordMinCount.description) {
        willSet {
            LockManager.options.tooShortTitle = newValue
        }
    }

    /// 设置密码提示文字：设置成功
    public var setSuccess = "密码设置成功!" {
        willSet {
            LockManager.options.setSuccess = newValue
        }
    }

    // MARK: - 验证密码

    public var verifyPassword = "验证密码" {
        willSet {
            LockManager.options.verifyPassword = newValue
        }
    }

    /// 验证密码：普通提示文字
    public var enterPassword = "请滑动输入密码" {
        willSet {
            LockManager.options.enterPassword = newValue
        }
    }

    /// 验证密码：密码错误
    public var passwordWrong = "输入密码错误" {
        willSet {
            LockManager.options.passwordWrong = newValue
        }
    }

    /// 验证密码：验证成功
    public var passwordCorrect = "密码正确" {
        willSet {
            LockManager.options.passwordCorrect = newValue
        }
    }

    // MARK: - 修改密码

    public var modifyPassword = "修改密码" {
        willSet {
            LockManager.options.modifyPassword = newValue
        }
    }

    /// 修改密码：普通提示文字
    public var enterOldPassword = "请输入旧密码" {
        willSet {
            LockManager.options.enterOldPassword = newValue
        }
    }

    // MARK: - 颜色

    /// 背景色
    public var backgroundColor = UIColor(r: 255, g: 255, b: 255) {
        willSet {
            LockManager.options.backgroundColor = newValue
        }
    }

    /// 外环线条颜色：默认
    public var circleLineNormalColor = UIColor(r: 173, g: 216, b: 230) {
        willSet {
            LockManager.options.circleLineNormalColor = newValue
        }
    }

    /// 外环线条颜色：选中
    public var circleLineSelectedColor = UIColor(r: 0, g: 191, b: 255) {
        willSet {
            LockManager.options.circleLineSelectedColor = newValue
        }
    }

    /// 实心圆
    public var circleLineSelectedCircleColor = UIColor(r: 0, g: 191, b: 255) {
        willSet {
            LockManager.options.circleLineSelectedCircleColor = newValue
        }
    }

    /// 连线颜色
    public var lockLineColor = UIColor(r: 0, g: 191, b: 255) {
        willSet {
            LockManager.options.lockLineColor = newValue
        }
    }

    /// 警示文字颜色
    public var warningTitleColor = UIColor(r: 254, g: 82, b: 92) {
        willSet {
            LockManager.options.warningTitleColor = newValue
        }
    }

    /// 普通文字颜色
    public var normalTitleColor = UIColor(r: 192, g: 192, b: 192) {
        willSet {
            LockManager.options.normalTitleColor = newValue
        }
    }

    // MARK: - LockDelegate

    /// 导航栏titleColor Default black
    public var barTittleColor: UIColor = UIColor.black {
        willSet {
            LockManager.options.barTittleColor = newValue
        }
    }

    /// 导航栏底部黑线是否隐藏 Default false
    public var hideBarBottomLine: Bool = false {
        willSet {
            if newValue {
                LockManager.options.hideBarBottomLine = newValue
            }
        }
    }

    /// barButton文字颜色 Default red
    public var barTintColor: UIColor = UIColor.red {
        willSet {
            LockManager.options.barTintColor = newValue
        }
    }

    /// barButton文字大小 Default 18
    public var barTittleFont: UIFont = UIFont.systemFont(ofSize: 18) {
        willSet {
            LockManager.options.barTittleFont = newValue
        }
    }

    /// 导航栏背景颜色 Default nil
    public var barBackgroundColor: UIColor? {
        willSet {
            LockManager.options.barBackgroundColor = newValue
        }
    }

    /// 状态栏字体颜色 Default black
    public var statusBarStyle: UIStatusBarStyle = .default {
        willSet {
            LockManager.options.statusBarStyle = newValue
        }
    }
}
