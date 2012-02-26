module ListingsHelper

  # @return [String]
  def get_file_path(image_id)
    @filename = "#{image_id}.png"
    @asset_path = image_path "listings/#{@filename}"

    return @asset_path
  end

  def show_primary_image(listing)
   # if listing.respond_to? primary_image_id
      @image_path = get_file_path listing.primary_image_id
      @image_tag = image_tag @image_path

      return @image_tag
    #else
    #  echo image_tag ""
    #end
  end
end
