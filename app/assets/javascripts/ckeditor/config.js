CKEDITOR.editorConfig = function( config )
{
  config.toolbar = 'BasicPlus';
  config.toolbar_BasicPlus =
  [
    ['Format', '-', 'Bold', 'Italic', 'Underline','Strike','Subscript','Superscript','-','RemoveFormat'],
    ['NumberedList', 'BulletedList', '-', 'Blockquote'],
    ['Link', 'Unlink'],
    ['Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo']
  ];
  config.format_tags = 'p;h1;h2'
    
};