module ListingsHelper

  #TODO: replace image_not_found with stock photo
  #filename of image to display if no image is found
  IMAGE_NOT_FOUND = "image_not_found.jpg"

  #returns the image tag for an listing image id
  def show_image(image_id)
    if image_id.nil?
      image_tag IMAGE_NOT_FOUND
    else
      @image_path = get_file_path image_id
      image_tag @image_path
    end
  end
end

  #returns the file path for a listing image_id
  def get_file_path(image_id)
    if image_id.nil?
      IMAGE_NOT_FOUND
    else
      @filename = "#{image_id}.png"
      image_path "listings/#{@filename}"
    end
  end
