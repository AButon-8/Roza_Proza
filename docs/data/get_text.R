# Функция для скрапинга текста

get_text <- function(url){
  # Sys.sleep(1) # задержка между скрапингом страниц, если нужно, в скобках - время задержки
  read_html(url, encoding = "Windows-1251") |> 
    html_elements(".text") |> 
    html_text2() |> 
    paste(collapse=" ")
}
