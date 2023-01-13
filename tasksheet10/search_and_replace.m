function search_and_replace(filename)
    % get the word to search for and the word to replace it with
    search_word = input("Which word should be replaced? ", "s");
    replace_word = input("What should it be replaced with? ", "s");

    % read the file and replace the word
    file_content = fileread(filename);
    file_content = strrep(file_content, search_word, replace_word);

    % save the replaced text to a new file
    fid = fopen("assets/lorem-mod.txt", "w");
    fprintf(fid, file_content);
    fclose(fid);
end
