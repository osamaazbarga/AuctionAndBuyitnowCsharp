//const slideshowImages = document.querySelectorAll(".intro-slideshow img");

//const nextImageDelay = 5000;
//let currentImageCounter = 0; // setting a variable to keep track of the current image (slide)

//// slideshowImages[currentImageCounter].style.display = "block";
//slideshowImages[currentImageCounter].style.opacity = 1;

//setInterval(nextImage, nextImageDelay);

//function nextImage() {
//    // slideshowImages[currentImageCounter].style.display = "none";
//    slideshowImages[currentImageCounter].style.opacity = 0;

//    currentImageCounter = (currentImageCounter + 1) % slideshowImages.length;

//    // slideshowImages[currentImageCounter].style.display = "block";
//    slideshowImages[currentImageCounter].style.opacity = 1;
//}



var images = ['a.jpg', 'b.jpg', 'c.jpg', 'd.jpg', 'e.jpg'];

var x = 0;

var imgs = document.getElementById('img');

setInterval(slider, 2000);


function slider() {

    if (x < images.length) {
        x = x + 1;
    } else {
        x = 1;
    }


    imgs.innerHTML = "<img src=" + images[x - 1] + ">";


}