$(function() {
        var getUrl = window.location;
        var baseUrl = getUrl .protocol + "//" + getUrl.host + "/";

        var url = baseUrl;

        $('textarea.texteditor').ckeditor({
                language: 'en',
                extraPlugins : 'placeholder',
                toolbar: [
                ['Source','-','Save','NewPage','Preview','-','Templates'],
	  	['Cut','Copy','Paste','PasteText','PasteFromWord','-','Print', 'SpellChecker', 'Scayt'],
		['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],
		['Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 'HiddenField'],
		'/',
		['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
		['NumberedList','BulletedList','-','Outdent','Indent','Blockquote'],
		['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
		['Link','Unlink','Anchor','Youtube'],
		['Image','Flash','Table','HorizontalRule','Hhs','Smiley','SpecialChar','PageBreak'],
		'/',
		['Styles','Format','Font','FontSize'],
		['TextColor','BGColor'],
		['Maximize', 'ShowBlocks','-','About','CreatePlaceholder']
	       
        ],
                //this code below for kcfinder           
                filebrowserBrowseUrl: url+'sibilup/assets/grocery_crud/texteditor/ckeditor/kcfinder/browse.php?opener=ckeditor&type=files',
                filebrowserImageBrowseUrl: url+'sibilup/assets/grocery_crud/texteditor/ckeditor/kcfinder/browse.php?opener=ckeditor&type=images',
                filebrowserFlashBrowseUrl: url+'sibilup/assets/grocery_crud/texteditor/ckeditor/kcfinder/browse.php?opener=ckeditor&type=flash',
                filebrowserUploadUrl: url+'sibilup/assets/grocery_crud/texteditor/ckeditor/kcfinder/upload.php?opener=ckeditor&type=files',
                filebrowserImageUploadUrl: url+'sibilup/assets/grocery_crud/texteditor/ckeditor/kcfinder/upload.php?opener=ckeditor&type=images',
                filebrowserFlashUploadUrl: url+'sibilup/assets/grocery_crud/texteditor/ckeditor/kcfinder/upload.php?opener=ckeditor&type=flash'
                
        });
        $('textarea.mini-texteditor').ckeditor({
                language: 'en',
                toolbar: 'Basic',
                width: 700
        });
});