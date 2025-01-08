every 1.minute do
  runner "PopupMessageJob.perform_later('Hello, World!', Time.now)"
end