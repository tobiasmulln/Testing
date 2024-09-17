import time
import win32gui
import win32con

def window_enum_handler(hwnd, result):
    if win32gui.IsWindowVisible(hwnd):
        result.append((hwnd, win32gui.GetWindowText(hwnd)))

def find_window_by_partial_titles(partial_titles):
    all_windows = []
    win32gui.EnumWindows(window_enum_handler, all_windows)
    for hwnd, window_title in all_windows:
        if any(title in window_title for title in partial_titles):
            return hwnd
    return None

def remove_window_title_bar(partial_titles):
    while True:
        try:
            window_handle = find_window_by_partial_titles(partial_titles)
            if window_handle:
                GWL_STYLE = win32con.GWL_STYLE
                current_style = win32gui.GetWindowLong(window_handle, GWL_STYLE)
                new_style = current_style & ~(win32con.WS_CAPTION | win32con.WS_SYSMENU | win32con.WS_THICKFRAME | win32con.WS_MINIMIZEBOX | win32con.WS_MAXIMIZEBOX)
                win32gui.SetWindowLong(window_handle, GWL_STYLE, new_style)
                win32gui.SetWindowPos(window_handle, None, 0, 0, 800, 600, 
                                      win32con.SWP_FRAMECHANGED | win32con.SWP_NOMOVE | win32con.SWP_NOSIZE | win32con.SWP_NOZORDER)
            time.sleep(0.001)
        except KeyboardInterrupt:
            print("Script interrupted by user.")
            break

remove_window_title_bar(["Properties"])