use ratatui::widgets::ListState;

#[allow(dead_code)]

// ListStateExtトレイト
pub trait ListStateExt {
    fn select_next(&mut self);
    fn select_previous(&mut self);
}

// ListStateExtトレイトをListState構造体に実装
impl ListStateExt for ListState {
    // 次のアイテムを選択する
    fn select_next(&mut self) {
        let i = match self.selected() {
            Some(i) => (i + 1) % 31,
            None => 0,
        };
        self.select(Some(i));
    }

    // 前のアイテムを選択する
    fn select_previous(&mut self) {
        let i = match self.selected() {
            Some(i) => if i == 0 { 30 } else { i - 1 },
            None => 0,
        };
        self.select(Some(i));
    }
}
