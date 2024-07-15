return {
  "HakonHarnes/img-clip.nvim",
  event = "VeryLazy",
  opts = {
    default = {
      -- file and directory options
      dir_path = "", ---@type string
      extension = "png", ---@type string
      file_name = "%Y-%m-%d-%H-%M-%S", ---@type string
      use_absolute_path = false, ---@type boolean
      relative_to_current_file = true, ---@type boolean

      -- template options
      template = "$FILE_PATH", ---@type string
      url_encode_path = false, ---@type boolean
      relative_template_path = true, ---@type boolean
      use_cursor_in_template = true, ---@type boolean
      insert_mode_after_paste = true, ---@type boolean

      -- prompt options
      prompt_for_file_name = true, ---@type boolean
      show_dir_path_in_prompt = false, ---@type boolean

      -- base64 options
      max_base64_size = 10, ---@type number
      embed_image_as_base64 = false, ---@type boolean

      -- image options
      process_cmd = "", ---@type string
      copy_images = false, ---@type boolean
      download_images = true, ---@type boolean

      -- drag and drop options
      drag_and_drop = {
        enabled = true, ---@type boolean
        insert_mode = false, ---@type boolean
      },
    },

    -- filetype specific options
    filetypes = {
      markdown = {
        url_encode_path = true, ---@type boolean
        template = "![$CURSOR]($FILE_PATH)", ---@type string
        download_images = false, ---@type boolean
      },
      tex = {
        relative_template_path = false, ---@type boolean
        template = [[
\begin{figure}[h]
  \centering
  \includegraphics[width=0.8\textwidth]{$FILE_PATH}
  \caption{$CURSOR}
  \label{fig:$LABEL}
\end{figure}
    ]], ---@type string
      },
    },
  },
  keys = {
    -- suggested keymap
    { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
  },
}
