
$(function() {
    //
    // Define variables
    //
    // Modal template
    var modalTemplate = '<div class="modal-dialog modal-lg" role="document">\n' +
        '  <div class="modal-content">\n' +
        '    <div class="modal-header">\n' +
        '      <div class="kv-zoom-actions btn-group">{toggleheader}{fullscreen}{borderless}{close}</div>\n' +
        '      <h6 class="modal-title">{heading} <small><span class="kv-zoom-title"></span></small></h6>\n' +
        '    </div>\n' +
        '    <div class="modal-body">\n' +
        '      <div class="floating-buttons btn-group"></div>\n' +
        '      <div class="kv-zoom-body file-zoom-content"></div>\n' + '{prev} {next}\n' +
        '    </div>\n' +
        '  </div>\n' +
        '</div>\n';

    // Buttons inside zoom modal
    var previewZoomButtonClasses = {
        toggleheader: 'btn btn-default btn-icon btn-xs btn-header-toggle',
        fullscreen: 'btn btn-default btn-icon btn-xs',
        borderless: 'btn btn-default btn-icon btn-xs',
        close: 'btn btn-default btn-icon btn-xs'
    };

    // Icons inside zoom modal classes
    var previewZoomButtonIcons = {
        prev: '<i class="icon-arrow-left32"></i>',
        next: '<i class="icon-arrow-right32"></i>',
        toggleheader: '<i class="icon-menu-open"></i>',
        fullscreen: '<i class="icon-screen-full"></i>',
        borderless: '<i class="icon-alignment-unalign"></i>',
        close: '<i class="icon-cross3"></i>'
    };

    // File actions
    var fileActionSettings = {
        zoomClass: 'btn btn-link btn-xs btn-icon',
        zoomIcon: '<i class="icon-zoomin3"></i>',
        dragClass: 'btn btn-link btn-xs btn-icon',
        dragIcon: '<i class="icon-three-bars"></i>',
        removeClass: 'btn btn-link btn-icon btn-xs',
        removeIcon: '<i class="icon-trash"></i>',
        indicatorNew: '<i class="icon-file-plus text-slate"></i>',
        indicatorSuccess: '<i class="icon-checkmark3 file-icon-large text-success"></i>',
        indicatorError: '<i class="icon-cross2 text-danger"></i>',
        indicatorLoading: '<i class="icon-spinner2 spinner text-muted"></i>'
    };

    $('.file-input').fileinput({
        theme: 'fa',
        uploadUrl: '/file-upload-batch/2',
        uploadAsync: false,
        showUpload: false,
        maxFileCount: 15,
        mainClass: "input-group-lg",
        allowedFileExtensions: ["jpg", "png"],
        maxFileSize: 500,
        layoutTemplates: {
            icon: '<i class="icon-file-check"></i>',
            modal: modalTemplate
        },
        initialCaption: "No file selected",
        previewZoomButtonClasses: previewZoomButtonClasses,
        previewZoomButtonIcons: previewZoomButtonIcons,
        fileActionSettings: fileActionSettings
    });
    $('#file-input-cover').fileinput({
			  theme: 'fa',
        
        uploadAsync: false,
        showUpload: false,
        maxFileCount: 1,
        mainClass: "input-group-lg",
        allowedFileExtensions: ["jpg", "png"],
        maxFileSize: 500,
        layoutTemplates: {
            icon: '<i class="icon-file-check"></i>',
            modal: modalTemplate
        },
        initialCaption: "No file selected",
        previewZoomButtonClasses: previewZoomButtonClasses,
        previewZoomButtonIcons: previewZoomButtonIcons,
        fileActionSettings: fileActionSettings
    });
    // portfolio image modal(popup)
    // Image lightbox
    $('[data-popup="lightbox"]').fancybox({
        padding: 3
    });
    $('.maxlength-textarea').maxlength({
        alwaysShow: true
    });
		
    // Alert combination
    /*$('.sweet_combine').click(function(e) {
        e.preventDefault()
        swal({
                title: "Are you sure?",
                text: "You will not be able to recover this member again!",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "Yes, delete it!",
                cancelButtonText: "No, cancel!",
                closeOnConfirm: false,
                closeOnCancel: false },
                function(isConfirm) {
                    if (isConfirm) {
                        $.ajax({
                            url: "<?php echo base_url()?>Dashboard/",
                            type: 'DELETE',
                            dataType : JSON,
                            success: swal ('Deleted!', 'The member was deleted successfully.','success')
                        });
                    }
                    else {
                        swal("Cancelled", "Your imaginary file is safe :)", "error");
                    }
                }
             );


    });*/
		var _URL = window.URL;
		/*$("#file-input-cover").change(function (e) {
				var file, img;
				if ((file = this.files[0])) {
						img = new Image();
						img.onload = function () {
							if(this.width != this.height){
								alert("Uploaded Cover Image Resolution is: "+ this.width+ " X "+this.height);
								$('#file-input-cover').val('');
								//$('#file-input-cover').fileinput('destroy').fileinput('enable');
								//$('#file-input-cover').fileinput('reset').trigger('custom-event');
								$('#file-input-cover').fileinput('refresh', {showCaption: false}).fileinput('enable');
							}
						};
						img.src = _URL.createObjectURL(file);
				}
		});*/
	
});
function confirmationDelete(anchor)
{
    var conf = confirm('Do you really want to delete this record?');
    if(conf)
        window.location=anchor.attr("href");
}


