module ProductsHelper

def form_title

@product.new_record? ? "publicar producto" : "modificar producto"

end


end