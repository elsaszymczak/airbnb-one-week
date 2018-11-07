
function photoPreview () {
  const reader = new FileReader();
  const fileInput = document.getElementById("camp_photo");
  const img = document.getElementById("img");
  reader.onload = e => {
    img.src = e.target.result;
  }
  fileInput.addEventListener('change', e => {
    const f = e.target.files[0];
    console.log(f)
    reader.readAsDataURL(f);
  })
}

export { photoPreview };
