use crate::menu::MenuItem;
use ratatui::widgets::ListState;

// MenuList構造体
// メニューのリストを表す
// items: メニューのアイテム
// state: 現在の選択状態

pub struct MenuList {
    pub items: Vec<MenuItem>, // メニューのアイテム
    pub state: ListState, // 現在の選択状態
}

// MenuList構造体のデフォルト値を定義
// items: MenuItemの全てのアイテムを取得
// state: ListStateのデフォルト値を取得

impl Default for MenuList {
    fn default() -> Self {
        Self {
            items: MenuItem::all(), // MenuItemの全てのアイテムを取得
            state: ListState::default(), // ListStateのデフォルト値を取得
        }
    }
}
