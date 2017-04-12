prawn_document do |pdf|
  pdf.text "Listando Categorias"
  pdf.move_down 20
  pdf.table @categories.collect{|p| [p.id,p.description]}
end
