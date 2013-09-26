Spree::Core::Search::Base.class_eval do

  def retrieve_products
    if keywords.present?
      @products = Spree::Product.active.basic_search({name: keywords, description: keywords}, false)
    else
      @products_scope = get_base_scope
      @products = @products_scope.includes([:master => :prices])
      unless Spree::Config.show_products_without_price
        @products = @products.where("spree_prices.amount IS NOT NULL").where("spree_prices.currency" => current_currency)
      end
    end

    curr_page = page || 1
    @products = @products.page(curr_page).per(per_page)
    @products
  end

end
