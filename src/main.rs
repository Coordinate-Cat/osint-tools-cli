use std::io::{self, stdout};
use color_eyre::Result;
use crossterm::{
    execute,
    terminal::{disable_raw_mode, enable_raw_mode, EnterAlternateScreen, LeaveAlternateScreen},
};
use ratatui::backend::CrosstermBackend;
use ratatui::Terminal;

mod app;
mod menu;
mod menu_list;
mod list_state_ext;

use crate::app::App;

// main関数
// アプリケーションを初期化して実行する
// エラーが発生した場合は、エラーメッセージを表示する
// エラーが発生しない場合は、アプリケーションの実行結果を返す

fn main() -> Result<()> {
    color_eyre::install()?; // color-eyreを初期化
    enable_raw_mode()?; // raw modeを有効化

    let mut stdout = stdout(); // 標準出力を取得
    execute!(stdout, EnterAlternateScreen)?; // ターミナルをクリア

    let backend = CrosstermBackend::new(stdout); // crossterm backendを作成
    let terminal = Terminal::new(backend)?; // terminalを作成

    let app = App::default(); // アプリケーションを初期化
    let result = app.run(terminal); // アプリケーションを実行

    disable_raw_mode()?; // raw modeを無効化
    execute!(io::stdout(), LeaveAlternateScreen)?; // ターミナルを復元

    result // アプリケーションの実行結果を返す
}
