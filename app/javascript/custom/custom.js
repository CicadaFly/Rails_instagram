import * as FilePond from 'filepond';
import FilePondPluginImagePreview from 'filepond-plugin-image-preview'
import FilePondPluginFileValidateType from 'filepond-plugin-file-validate-type';


document.addEventListener("turbo:load", loadingFilePond)
function loadingFilePond() {
  

  FilePond.registerPlugin(
    FilePondPluginImagePreview,
    FilePondPluginFileValidateType
  );

  const inputElement = document.querySelector("#post-images");
  // Create a FilePond instance
  const pond = FilePond.create(inputElement, {
                                  credits: {},
                                  storeAsFile: true,
                                  allowMultiple: true,
                                  allowReorder: true,
                                  acceptedFileTypes: ["image/*"],
                                  dropValidation: true
                                });
}

