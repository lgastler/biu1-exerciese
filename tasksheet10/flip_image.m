% get the path to the image that should be flipped and where the flipped image should be saved
% image_to_flip_path = input("Enter the path to the image that should be flipped: ", "s");
% flipped_image_path = input("Enter the path to where the flipped image should be saved: ", "s");
image_to_flip_path = "assets/Mario.png";
flipped_image_path = "assets/flipped.png";

% check that both paths are valid
if ~isfile(image_to_flip_path)
    error("The path to the image that should be flipped is not valid.");
end

% load the image_to_flip using a png with color
image_to_flip = imread(image_to_flip_path);

[image_width, image_height, number_of_color_channels] = size(image_to_flip);
image_is_rgb = number_of_color_channels == 3;

% create a matrix to store the flipped image
if image_is_rgb
    flipped_image = ones(image_width, image_height, 3, 'uint8');
else
    flipped_image = ones(image_width, image_height);
end

for i = 1:image_width
    for j = 1:image_height
        % if the image is rgb we need to iterate over all color layers
        if image_is_rgb
          for n = 1:3
            flipped_image(i , image_width+1-j, n) = uint8(image_to_flip(i, j, n));  
          end
        % if not rgb just flip the 2d array
        else
            flipped_image(i , image_width+1-j) = uint8(image_to_flip(i, j));
        end
    end
end



% save the flipped_image
imwrite(flipped_image, flipped_image_path);

% show image
imshow(flipped_image);

