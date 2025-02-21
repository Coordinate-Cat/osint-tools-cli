use crate::menu::MenuItem;
use crate::menu_list::MenuList;
use color_eyre::Result;
use crossterm::event::{self, Event, KeyCode, KeyEvent, KeyEventKind};
use ratatui::{
    backend::CrosstermBackend,
    Terminal,
    style::{Modifier, Style},
    widgets::{Block, Borders, List, ListItem},
    Frame,
    layout::{Constraint, Direction, Layout},
};

// App構造体
pub struct App {
    pub should_exit: bool,
    pub menu_list: MenuList,
    pub menu_stack: Vec<Vec<MenuItem>>,
}

// App構造体のデフォルト値を定義
impl Default for App {
    fn default() -> Self {
        Self {
            should_exit: false,
            menu_list: MenuList::default(),
            menu_stack: Vec::new(),
        }
    }
}

// App構造体に関連するメソッドを定義
impl App {
    // アプリケーションを実行する
    pub fn run(mut self, mut terminal: Terminal<CrosstermBackend<std::io::Stdout>>) -> Result<()> {
        while !self.should_exit {
            terminal.draw(|frame| self.render(frame))?;
            if let Event::Key(key) = event::read()? {
                self.handle_key(key);
            }
        }
        Ok(())
    }

    // キー入力を処理する
    fn handle_key(&mut self, key: KeyEvent) {
        if key.kind != KeyEventKind::Press {
            return;
        }
        match key.code {
            // 終了キーを処理する(キー: q, Esc)
            KeyCode::Char('q') | KeyCode::Esc => self.handle_exit_key(),
            // 左キーを処理する(キー: h, Left)
            KeyCode::Char('h') | KeyCode::Left => self.handle_left_key(),
            // 下キーを処理する(キー: j, Down)
            KeyCode::Down | KeyCode::Char('j') => self.menu_list.state.select_next(),
            // 上キーを処理する(キー: k, Up)
            KeyCode::Up | KeyCode::Char('k') => self.menu_list.state.select_previous(),
            // Enterキーを処理する(キー: Enter)
            KeyCode::Enter => self.handle_enter_key(),
            // その他のキーは無視する
            _ => {}
        }
    }

    // 終了キーを処理する(キー: q, Esc)
    fn handle_exit_key(&mut self) {
        if self.menu_stack.is_empty() {
            self.should_exit = true;
        } else {
            if let Some(previous_menu) = self.menu_stack.pop() {
                self.menu_list.items = previous_menu;
                self.menu_list.state.select(Some(0));
            }
        }
    }

    // 左キーを処理する(キー: h, Left)
    fn handle_left_key(&mut self) {
        if let Some(previous_menu) = self.menu_stack.pop() {
            self.menu_list.items = previous_menu;
            self.menu_list.state.select(Some(0));
        }
    }

    // Enterキーを処理する(キー: Enter)
    fn handle_enter_key(&mut self) {
        if let Some(selected) = self.menu_list.state.selected() {
            let selected_item = &self.menu_list.items[selected];
            match selected_item {
                MenuItem::Exit => self.should_exit = true,
                MenuItem::MapsGeolocationTransport(submenu) => {
                    if !submenu.is_empty() {
                        self.menu_stack.push(self.menu_list.items.clone());
                        self.menu_list.items = submenu.clone();
                        self.menu_list.state.select(Some(0));
                    }
                },
                _ => {}
            }
        }
    }

    // フレームを描画する
    fn render(&mut self, frame: &mut Frame) {
        // レイアウトを作成
        let chunks = Layout::default()
            .direction(Direction::Horizontal)
            .constraints([
                Constraint::Percentage(50),
                Constraint::Percentage(50),
            ])
            .split(frame.area());

        // メインメニューを描画
        let items: Vec<ListItem> = self.menu_list.items
            .iter()
            .map(|item| ListItem::new(item.to_str()))
            .collect();

        // メインメニューのリストを作成
        let main_menu = List::new(items)
            .block(Block::default().borders(Borders::ALL).title("OSINT Tools CLI"))
            .highlight_style(Style::default().add_modifier(Modifier::REVERSED));

        // メインメニューを描画
        frame.render_stateful_widget(main_menu, chunks[0], &mut self.menu_list.state);

        // プレビューを描画
        if let Some(selected) = self.menu_list.state.selected() {
            if let MenuItem::MapsGeolocationTransport(submenu) = &self.menu_list.items[selected] {
                let preview_items: Vec<ListItem> = submenu
                    .iter()
                    .map(|item| ListItem::new(item.to_str()))
                    .collect();

                let preview = List::new(preview_items)
                    .block(Block::default().borders(Borders::ALL).title("Preview"))
                    .highlight_style(Style::default().add_modifier(Modifier::DIM));

                frame.render_widget(preview, chunks[1]);
            }
        }
    }
}
