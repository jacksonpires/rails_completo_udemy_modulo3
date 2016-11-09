def levantar_erro
  begin
    p ">>>>>> antes do erro"
    File.open("bc.txt")
    p "depois do erro"
  rescue Errno::ENOENT
    p "Erro ao tentar abrir arquivo..."
  rescue Exception => e
    p "pode dar erro q to nem aih! ;)    Esse foi o erro (#{e})"
  ensure
    p "isso vai ser feito de qq jeito!"
  end
end

levantar_erro
